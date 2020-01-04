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
#include "Groups.h"
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
long blinkTime = 0;
long currentTime = 0;
boolean blankDisplay = true;

// The control push button used to change the stations
PushButton controlButton;
const int controlButtonPin = 14;

// Button states
const int NOTHING      = 0; //Nothing or Bounce
const int HOLD        =  1; // Pressed and not released for a long time
const int LONG_PRESS  =  2; // Pressed and released after a long time
const int CLICK        = 3; // A single click
const int DOUBLE_CLICK = 4;
const int TRIPLE_CLICK = 5;
const int FOUR_CLICKS  = 6;
const int FIVE_CLICKS  = 7;

// The station selection states
enum SelectionState {STATION_SELECT, GROUP_SELECT} selectionState;

// Line 0 of the LCD display is used as either the status display 
// or to display the name of the currently selected group. 
// To handle this correctly, keep a track of what is being displayed.
enum StatusDisplayState  {NONE, GROUP, CONNECT};
StatusDisplayState statusDisplayState = NONE; 

// The display bufer used for scolling text tciker tape style
const int DISPLAY_BUFFER_LEN = 16; // Number of characters the LCD can display
const int SPACING = 2; // Number characters used to seperate strings in
                       // a ticker tape style diplay
const int ROLL_DISPLAY_TIME = 350; // How quickly the display is rolled in ms
int scrollTime;
char displayBuffer[DISPLAY_BUFFER_LEN + 1];
int tickerTapeStep = 0;

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

/*const int NUMBER_STATIONS = 11;
Station* stations[NUMBER_STATIONS];
// The index of the station currently playing
int currentStation;
*/
const int maxPayloadLength = 1000;
const int maxNumberStationsInGroup = 10;
const int maxNumberGroups = 10;

struct Payload {
  char* pDataBuffer;
  int length;
} payload;

// The structure containing the groups and the stations
Groups* groups;
Group* currentGroup;
Station* currentStation;



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

// Inhibits the loop from further processing if there was
// a failure with the setup
boolean setupFailure = false;


// Function prototypes
void handleRedirect();
void handleOtherCode(int);
//void loadStations();
void setStation();
void initializeGroupStructure();
void readStationConfiguration();
void clearDisplayLine(int);
void tickerTape(int, char*, int, char*, int, int);


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
  /*
  Serial.println("Loading stations");
  Serial.flush();
  loadStations();
  for (int i=0; i < NUMBER_STATIONS; i++) {
    Serial.print(stations[i]->getName());
    Serial.print(" ");
    Serial.println(stations[i]->getURL());
  }
  Serial.println("Stations loaded");
*/

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
    displayConnecting(); 
    lcd.setCursor(0,1);
    lcd.print( "WiFi");



    WiFiMulti.addAP(ssid, password);  // Only adding ONE access point

    // Wait for WiFi connection
    // Using a large number of connection attempts
    // with a short interval between them seems
    // to ensure that a connection is (almost) 
    // always made.
    const int MAX_CONNECTION_ATTEMPTS = 50;
    int nAttempts = 0;
    while((WiFiMulti.run() != WL_CONNECTED && nAttempts <  MAX_CONNECTION_ATTEMPTS)) {
      Serial.print("WiFi Connection attempt "); Serial.println(nAttempts + 1);
      delay(50);
      nAttempts++;

    }
    Serial.println();
    if (nAttempts >= MAX_CONNECTION_ATTEMPTS) {
       Serial.print("FAILED to connect to WIFI AP after ");
       Serial.print(MAX_CONNECTION_ATTEMPTS);
       Serial.println(" attempts!");
       printLCD("FAILED to", "connect to WiFi");
       setupFailure = true;
    } else {
       Serial.print("Connected to WIFI AP");
       printLCD("Connected to", "WiFi");
    }

    // Set the initial station
    // TODO Read the last station set from the EEPROM
    initializeGroupStructure();
    
    if((WiFiMulti.run() == WL_CONNECTED)) {
       lcd.clear();
       lcd.print("Connected to WIFI");
       readStationConfiguration();
       setStation();

    }

    // Set all timing variables to now
    scrollTime = currentTime = blinkTime = millis();

}

void loop() {
  int nRead = 0;
  int maxBytesToRead;

  // If there has been a failure in the setup then 
  // just return
  if (setupFailure) return;

  // See if we have to change the station
  /*
  if(controlButton.buttonCheck(millis(), digitalRead(controlButtonPin)) == 3 ) {  //  Control button clicked
    // change station
    currentStation++;
    if (currentStation > NUMBER_STATIONS - 1) currentStation = 0;
    setStation(currentStation);
    // Reinitialise the  buffer
    bufferInitialized = false;
    ringBuffer.begin();
  }
  */
  switch(controlButton.buttonCheck(millis(), digitalRead(controlButtonPin))) {
    case HOLD : // Toggle the selection state between group selection and stations selection;
             // Blick the group name and clear the station (second) line.
             if (selectionState == STATION_SELECT) selectionState = GROUP_SELECT;
             else {
               selectionState = STATION_SELECT;
               displayCurrentGroup();
               displayCurrentStation();
             }
             break;
    case CLICK :
              if (selectionState == GROUP_SELECT) {
                changeGroup();
                displayCurrentGroup();
                displayCurrentStation();
              } else {  // Station select
                // Reinitialise the  buffer?
                bufferInitialized = false;
                ringBuffer.begin();
                changeStation();
                setStation();
                displayCurrentStation();
                
          
              }
             break;
    default: break; // Ignore other button selectionStates
 }
 // Determine how the groups of station is displayed when it can be changed
 if (selectionState == GROUP_SELECT) {
  blinkGroup();
 }

 

 // Now check if the station length is longer than 16
 if (strlen(currentStation->getName()) > 16 && selectionState != GROUP_SELECT) {
   rollStationDisplay();
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

  if (bufferInitialized && (statusDisplayState != GROUP)) {
    displayCurrentGroup();
  }
 

  // Adding data to ring buffer
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

void initializeGroupStructure() {
   groups = new Groups(maxNumberStationsInGroup, maxNumberGroups);
}

void readStationConfiguration() {
  HTTPClient http;


  Serial.print("[HTTP] begin...\n");
  lcd.clear();
  lcd.write("Reading stations");
  // configure station server  url
  //http.begin("https://www.howsmyssl.com/a/check", ca); //HTTPS
  http.begin("http://www.andrew-doble.homepage.t-online.de/ir/stations.txt"); //HTTP

  Serial.print("[HTTP] GET...\n");
  // start connection and send HTTP header
  int httpCode = http.GET();

  // httpCode will be negative on error
  if(httpCode > 0) {
      // HTTP header has been send and Server response header has been handled
      Serial.printf("[HTTP] GET... code: %d\n", httpCode);


      // file found at server
      if(httpCode == HTTP_CODE_OK) {
          String payloadString = http.getString();

          // Copy the payload into a char array for further manipulation
          payload.length = payloadString.length();

          payload.pDataBuffer = new char[payload.length];
          //payloadString.toCharArray(payload.pDataBuffer, maxPayloadLength);
          payloadString.toCharArray(payload.pDataBuffer, payload.length);

          groups->setup(payload.pDataBuffer, payload.length);

          // Print out the group and station structure
          groups->begin();
        	Group* group;
            while ((group = groups->next()) != NULL) {
            	Serial.println(group->getName());

            	group->begin();
            	Station* station;
            	while ((station = group->next()) != NULL) {
            		Serial.print("    ");
                Serial.print(station->getName());
                Serial.print(",");
                Serial.print(station->getURL());
                Serial.println();

            	}
            }

      // Set the LCD to the first group and station
      if (groups == NULL) Serial.println("PANIC A");
      groups->begin();
      currentGroup = groups->next();
      if (currentGroup == NULL)  Serial.println("PANIC B");

      lcd.clear();
      lcd.print(currentGroup->getName());
      currentGroup->begin();
      currentStation = currentGroup->next();
      if (currentStation == NULL)  Serial.println("PANIC C");
      lcd.setCursor(0,1);
      lcd.print(currentStation->getName());
  }
  } else {
      Serial.printf("[HTTP] GET... failed, error: %s\n", http.errorToString(httpCode).c_str());
  }

  http.end();
}
void displayCurrentGroup() {
  clearDisplayLine(0);
  if (currentGroup != NULL) {
    lcd.setCursor(0,0);
    lcd.print(currentGroup->getName());
  }
  statusDisplayState = GROUP; 
  displayCurrentStation();
}

void displayCurrentStation() {
  if (currentStation == NULL) {
    currentGroup->begin();
    currentStation = currentGroup->next();
  }
  if (currentStation != NULL) {
    clearDisplayLine(1);
    lcd.setCursor(0,1);
    lcd.print(currentStation->getName());
  }
}

void displayConnecting() {
  clearDisplayLine(0); 
  lcd.setCursor(0,0);
  lcd.print("Connecting to");
  statusDisplayState = CONNECT;
}

void changeStation() {
  currentStation = currentGroup->next();
  if (currentStation == NULL) {
    currentGroup->begin();
    currentStation = currentGroup->next();
  }
  if (currentGroup == NULL) Serial.println("PANIC GROUP");
  if (currentStation == NULL) Serial.println("PANIC STATION");

  // Reset any ticker tape state
  tickerTapeStep = 0;
}

void changeGroup() {
  currentGroup = groups->next();
  if (currentGroup == NULL) {  // Cycle through the groups
   groups->begin();
   currentGroup = groups->next();
  }

  // Set and display the first station in the group
  currentGroup->begin();
  currentStation = currentGroup->next();
}


void rollStationDisplay() {
   if ((millis() - scrollTime) > ROLL_DISPLAY_TIME) {  // Time to roll the display,
     tickerTape(tickerTapeStep, currentStation->getName(), strlen(currentStation->getName()), displayBuffer, DISPLAY_BUFFER_LEN, SPACING);
     lcd.setCursor(0,1);
     lcd.print(displayBuffer);
     tickerTapeStep++;
     if (tickerTapeStep == (DISPLAY_BUFFER_LEN + SPACING - 1)) tickerTapeStep = 0;
     scrollTime = millis();
  }
}

void blinkGroup() {
  lcd.setCursor(0,1);
  lcd.print("                "); // Clear the station details
  currentTime = millis();
  if (currentTime > blinkTime) {
    // Set the blink time to the future
    blinkTime = currentTime + 500;
    if (blankDisplay) {
      lcd.setCursor(0,0);
      lcd.print("                ");
      blankDisplay = false;
    } else {
      lcd.setCursor(0,0);
      if (currentGroup == NULL) Serial.println("PANIC HERE");
      lcd.print(currentGroup->getName());
      blankDisplay = true;
    }
  }
}

// Step < length of display
void tickerTape(int rollStep, char* text, int textLen, char* displayBuffer, int displayLength, int spacing) {
  int pos;

  for (int i=0; i< displayLength; i++) {
    pos = rollStep + i;
    if (pos >= 0 && pos < textLen) {

        displayBuffer[i] = text[pos];
    }
    if (pos >= textLen && pos < (textLen + spacing)) {
        displayBuffer[i] = ' ';
    }
    if (pos >= (textLen + spacing)) {
        displayBuffer[i] = text[pos%(textLen + spacing)];
    }
    // Make sure the string terminator is in place
    displayBuffer[DISPLAY_BUFFER_LEN] = '\0';
  }
}

 void clearDisplayLine(int line) {
   if (line < 2) {
    lcd.setCursor(0, line);
    lcd.print("                ");
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
void setStation() {

  // Disconnect if already connected
  if (http.connected()) {
    http.end();
    Serial.println("[HTTP] disconnect");
  }

  Serial.print("[HTTP] begin connection to ");
  Serial.print(currentStation->getName());
  Serial.println(" ...");


  // Configure server and url
  http.begin(currentStation->getURL());

  Serial.print("[HTTP] GET...\n");
  //printLCD("Connecting to", currentStation->getName());
  displayConnecting(); 
  displayCurrentStation(); 
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
          // HTTP cde returned that cannot be handled
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
/*
void loadStations() {

  stations[0] = new Station("RPR1", "http://streams.rpr1.de/rpr-kaiserslautern-128-mp3");
  stations[1] = new Station("RPR1 Best of the 80s", "http://streams.rpr1.de/rpr-80er-128-mp3");
  stations[2] = new Station("SWR3", "https://dg-swr-https-fra-dtag-cdn.sslcast.addradio.de/swr/swr3/live/mp3/128/stream.mp3");
  stations[3] = new Station("BBC Radio 1", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio1_mf_p");
  stations[4] = new Station("BBC Radio 2", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio2_mf_p");
  stations[5] = new Station("BBC Radio 3", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio3_mf_p");
  stations[6] = new Station("BBC Radio 4 FM", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio4fm_mf_p");
  stations[7] = new Station("Classical", "http://listen.181fm.com/181-classical_128k.mp3");
  stations[8] = new Station("Antenne", "http://mp3channels.webradio.antenne.de/antenne");
  stations[9] = new Station("Smooth Jazz Florida", "http://us4.internet-radio.com:8266/;stream");
  stations[10] = new Station("WDR3", "http://wdr-edge-2011.dus-lg.cdn.addradio.net/wdr/wdr3/live/mp3/128/stream.mp3");



 }
 */

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
