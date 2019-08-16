/**
* Internet Radio
*
*  This sketch:
*    - connects (WPA encryption)to an internet radio site using an ESP32 module
}    - reads the mp3 data stream
*    - buffers the data in an external SPI controlled RAM
*    - transfers it to the VS1053 so that it can decode
*      the mp3 data into an audio signal.
*
*
* Standard Libraries
* ==================
* Arduino           - Standard Arduino library
* SPI               - Serial Progamming Interface standard library
* WiFi              - Standard Arduino  WiFi library
* WiFiMulti         - Standard library for connecting to multiple access points
* HTTPClient        - Standard library for HTTP processing .
* ESP8266_Spiram    - Used by SPIRingBuffer as a driver for the 23LC1024.
*                     Handles basic communication with the memory chip.
* LiquidCrytal      - Controls the LCD display.
*
* Created Libaries (for the project)
* ==================================
* SPIRingBuffer     - A ring buffer that is implemented to use an SPI based
*                     23LC1024 RAM. This is used to buffer the data to that
*                     sporadic gaps in the internet connection are
*                     "smoothed out".
* Lemon_VS1053      - A local library to control the VS1053
*
*/

#include <Arduino.h>

#include <WiFi.h>
#include <WiFiMulti.h>
#include <HTTPClient.h>
#include <LiquidCrystal.h>

#include <SPI.h>
#include "Lemon_VS1053.h"
#include "SPIRingBuffer.h"
#include "PushButtonClicks.h"
#include "Station.h"
#include "credentials.h"

const char programName[] = "Internet-Radio-Module";

// Pin setup for the VS1053
const int DREQ = 26;
const int XCS  = 25;
const int XRST = 35;  //NOTE: The reset jumper on the
                      // Adafruit Feather MusicMaker w/Amp needs to be broken
const int XDCS = 27;

// Pin setup for the 23LC1024 RAM
const int RAMCS = 22;     // Chip select for the external RAM used for the ring buffer

// Setup the VS1053 Lemom player using standard hardware SPI pins
Lemon_VS1053 player = Lemon_VS1053(XRST, XCS, XDCS, DREQ);

// Set up the external RAM as a ring buffer
SPIRingBuffer ringBuffer(RAMCS);

// initialize the LCD library by associating any needed LCD interface pins
// with the microcontroller pin number it is connected to
const int rs = 16, en = 2, d4 = 4, d5 = 17, d6 = 15, d7 = 5;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

// The control push button used to change the stations
PushButton controlButton;
const int controlButtonPin = 14;

// Flag to ensure that the ring buffer is fully loaded on startup
bool bufferInitialized = false;

// The threshold at which the buffer will be faster loaded.
const int THRESHOLD = ringBuffer.RING_BUFFER_LENGTH / 5;   // 20%

// The skip flag to allow the buffer to catch up
int skip = 0;

volatile int checkControlStatus = 0;

// Setup the WIFI objects
WiFiMulti WiFiMulti;
HTTPClient http;

// WiFi configuration using the defines in credentials.h
const char* ssid     = WIFI_SSID;
const char* password = WIFI_PWD;

// Web page to access
//String station= "http://streams.rpr1.de/rpr-kaiserslautern-128-mp3";   // RPR1   128kps
//String stationName = "RPR1";
//String station= "http://217.151.151.90:80/rpr-80er-128-mp3";   // RPR1   128kps
//String station= "http://streams.rpr1.de/rpr-80er-128-mp3";   // RPR1 Best of the 80s - 128kbs
//String stationName = "RPR1 80s";
//String station= "https://dg-swr-https-fra-dtag-cdn.sslcast.addradio.de/swr/swr3/live/mp3/128/stream.mp3"; // SWR3 - 128kbs

Station* stations[3];
// The index of the station currently playing
int currentStation;

// Create a buffer  to read in the mp3 data. Thsi is set to DATABUFFERLEN as this
// is the amount that can be transfered to the VS1053 in one SPI operation.
const int DATABUFFERLEN = 32;
uint8_t mp3Buffer[DATABUFFERLEN];
int bufferIndex = 0;

// number of byte availble in the read stream
size_t nBytes;

// Pointer to  the payload stream, i.e. the MP3 data from the internet station.
WiFiClient * stream;

// Default setting for the tone control
int toneControl = 0;


// Function prototypes
void handleRedirect();
void handleOtherCode(int);
void loadStations();
void setStation(int);


void setup() {

  Serial.begin(115200);
  delay(10);

  // So we know what version we are running
  Serial.println(programName);
  Serial.println();

  // Set up the control button to change te stations
  pinMode(controlButtonPin, INPUT_PULLUP);

  // set up the LCD with the  number of columns and rows
  lcd.begin(16, 2);

  // Before initialising using the libraries  make sure that the CS pins are
  // in the right state
  pinMode(XCS, OUTPUT);
  digitalWrite(XCS, HIGH);
  pinMode(XDCS, OUTPUT);
  digitalWrite(XDCS, HIGH);
  pinMode(RAMCS, OUTPUT);
  digitalWrite(RAMCS, HIGH);
  delay(1);

  // Load  the stations
  Serial.println("Loading stations");
  Serial.flush();
  loadStations();
  for (int i=0; i< 3; i++) {
    Serial.print(stations[i]->getName());
    Serial.print(" ");
    Serial.println(stations[i]->getURL());
  }
  Serial.println("Stations loaded");


  // Initialise the ring buffer
  ringBuffer.begin();

  // Initialize the player
  if ( !player.begin()) { // initialise the player
     Serial.println("Error in player init!");
     player.dumpRegs();
  }


    // Make sure the VS1053 is in MP3 mode. For some this is not the case.
    while (!player.readyForData()) {}
    player.setMP3Mode();

    // Set the volume
    while (!player.readyForData()) {}
    player.setVolume(25,25);  // Higher is quieter.

    // Connect to the WIFI access point
    Serial.println("Attempting to connect to WIFI AP");
    printLCD("Connecting to", "WiFi");



    WiFiMulti.addAP(ssid, password);  // Only adding ONE access point

    // Wait for WiFi connection
    const int MAX_CONNECTION_ATTEMPTS = 50;
    int nAttempts = 0;
    while((WiFiMulti.run() != WL_CONNECTED && nAttempts <  MAX_CONNECTION_ATTEMPTS)) {
      //Serial.print(".");
      delay(50);
      nAttempts++;

    }
    Serial.println();
    if (nAttempts >= MAX_CONNECTION_ATTEMPTS) {
       Serial.print("FAILED to connect to WIFI AP after ");
       Serial.print(MAX_CONNECTION_ATTEMPTS);
       Serial.println(" attempts!");
       printLCD("FAILED to", "connect to WiFi");
    } else {
       Serial.print("Connected to WIFI AP");
       printLCD("Connected to", "WiFi");
    }

    // Set the initial station
    // TODO Read the last station set from the EEPROM
    setStation(1);


}

void loop() {
  int nRead = 0;
  int maxBytesToRead;

  // See if we have to change the station
  if(controlButton.buttonCheck(millis(), digitalRead(controlButtonPin)) == 3 ) {  //  Control button clicked
    // change station
    currentStation++;
    if (currentStation > 2) currentStation = 0;
    setStation(currentStation);
    // Reinitialise the  buffer
    bufferInitialized = false;
    ringBuffer.begin();
  }


  if (!bufferInitialized) {
    // Load up the buffer
    nBytes = stream->available();
    if (nBytes) {
      // read in chunks of up to 32 bytes

      //    availableSpace()       nBytes         ->    maxBytesToRead
      //    =================   =================     ===============
      //      >=DATABUFFERLEN   >DATABUFFERLEN         DATABUFFERLEN
      //      >=DATABUFFERLEN   <=DATABUFFERLEN        nBytes
      //      <DATABUFFERLEN          -               availableSpace

      if (ringBuffer.availableSpace() < DATABUFFERLEN) maxBytesToRead = ringBuffer.availableSpace();
      else maxBytesToRead = (nBytes> DATABUFFERLEN ? DATABUFFERLEN : nBytes);
      nRead = stream->readBytes(mp3Buffer, maxBytesToRead);
      // Transfer to buffer
      for (int i = 0; i < nRead; i++) {
        ringBuffer.put(mp3Buffer[i]);
      }
      if (ringBuffer.availableSpace() == 0)  {
          bufferInitialized = true;
          Serial.println("Buffer initialised");

      }
    }

  }   // -- if bufferInitialized

  // Adding data to buffer
  // is ring buffer full?
  //    no:   is source data available?
  //            yes: read source, data --> ring buffer
  //            no:  no-op
  //    yes: no-op
  //
  if (bufferInitialized) {
    if (ringBuffer.availableSpace() > DATABUFFERLEN) {
      nBytes = stream->available();
      if (nBytes) {
        // read up to 32 bytes
        nRead = stream->readBytes(mp3Buffer, (nBytes> DATABUFFERLEN ? DATABUFFERLEN : nBytes));
        // Transfer to buffer
        for (int i = 0; i < nRead; i++) {
          ringBuffer.put(mp3Buffer[i]);
        }
      }
    }
  }


  // Skip a transfer to the VS1053 to give the buffer a chance to reload if
  // has the data amout has fallen below THRESHOLD
  skip = ((bufferInitialized && (ringBuffer.availableData() < THRESHOLD)) ? (skip++)%2 : 0);

  // Moving data to VS1053
  // does VS1053 accept data? and not skip?
  //    yes: does ring buffer have data?
  //           yes: ring buffer data --> VS1053
  //           no:  no-op
  //    no:  no-op
  if (bufferInitialized  && !skip) {
      // Transfer to VS1053
      if (player.readyForData()) {
        nRead = (ringBuffer.availableData() > DATABUFFERLEN ? DATABUFFERLEN : ringBuffer.availableData());
        for (int i= 0; i < nRead; i++) {
          mp3Buffer[i] = ringBuffer.get();
        }
        player.playData(mp3Buffer, nRead);
      }

  }

}



/*
 *  Handles HTTP redirects
 *  As there are currently difficulties in finding a site that has redriects
 *  this function has NOT BEEN TESTED
 * TODO Do we need this?
 */
void handleRedirect() {
    String newSite;
    // TODO
    Serial.println("REDIRECT!");

    if (http.hasHeader("Location")) {
      newSite = http.header("Location");
    }

    http.begin(newSite);

    // start connection and send HTTP header
    int httpCode = http.GET();

    if(httpCode > 0) {
        // file found at server
        switch (httpCode) {
          case HTTP_CODE_OK:
            // TODO Add this code
            break;
          case HTTP_CODE_FOUND:
            // TODO add this code
            break;
          default:
            // HTTP cde retuned that cannot be handled
            handleOtherCode(httpCode);
            break;
        }
    }
    else {
      // TODO replace this with the general error handling
      Serial.printf("[HTTP] GET... failed, error: %s\n", http.errorToString(httpCode).c_str());
    }


}

/* Set the station.
*/
void setStation(int stationId) {

  // Disconnect if already connected
  if (http.connected()) {
    http.end();
    Serial.println("[HTTP] disconnect");
  }

  Serial.print("[HTTP] begin connection to ");
  Serial.print(stations[stationId]->getName());
  Serial.println(" ...");


  // Configure server and url
  http.begin(stations[stationId]->getURL());

  Serial.print("[HTTP] GET...\n");
  printLCD("Connecting to", stations[stationId]->getName());
  // start connection and send HTTP header
  int httpCode = http.GET();
  if(httpCode > 0) {
      // HTTP header has been send and Server response header has been handled
      Serial.printf("[HTTP] GET... code: %d\n", httpCode);

      // file found at server
      switch (httpCode) {
        case HTTP_CODE_OK:
          // get tcp stream of payload
          stream = http.getStreamPtr();
          break;
        case HTTP_CODE_TEMPORARY_REDIRECT:
           handleRedirect();
           break;
        case HTTP_CODE_PERMANENT_REDIRECT:
           handleRedirect();
           break;
        default:
          // HTTP cde retuned that cannot be handled
          handleOtherCode(httpCode);
          break;

      } // switch httpCode
  }
  else {
      // TODO replace this with the general error handling
      Serial.printf("[HTTP] GET... failed, error: %s\n", http.errorToString(httpCode).c_str());
  }
}
/*
 *  Handles other HTTP codes
 *
 */
void handleOtherCode(int httpCode) {
  // TODO as part of the general error handling
  Serial.print("Cannot handle this HTTP code:");
  Serial.println(httpCode);

}

// TO DO replace
void loadStations() {

  stations[0] = new Station("RPR1", "http://streams.rpr1.de/rpr-kaiserslautern-128-mp3");
  stations[1] = new Station("RPR1 Best of the 80s", "http://streams.rpr1.de/rpr-80er-128-mp3");
  stations[2] = new Station("SWR3", "https://dg-swr-https-fra-dtag-cdn.sslcast.addradio.de/swr/swr3/live/mp3/128/stream.mp3");
 }

/* Utility function to write to the LCD display.
 * line1 The top line of the LCD display.
 * line2 The bottom line of the LCD display.
 */
void printLCD(String line1, String line2) {
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print(line1);
  lcd.setCursor(0,1);
  lcd.print(line2);

}
