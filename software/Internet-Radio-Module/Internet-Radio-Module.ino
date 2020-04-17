/**
* Internet Radio
*
*  This sketch:
*    - connects (WPA encryption)to an internet radio site using an ESP32 module
*    - reads the mp3 data stream
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
#include <LiquidCrystal.h>

#include <SPI.h>
#include "Lemon_VS1053.h"
#include "SPIRingBuffer.h"
#include "PushButtonClicks.h"
#include "Groups.h"
#include "credentials.h"

const char programName[] = "Internet-Radio-Module 16.04.2020";

const char stationFile[] = "http://www.andrew-doble.homepage.t-online.de/ir/stations.txt";


// Pin setup for the VS1053
const int DREQ = 26;
const int XCS  = 25;
//const int XRST = 35;  // 35 is input only on wroom
const int XRST = 33;  //NOTE: The reset jumper on the
                      // Adafruit Feather MusicMaker w/Amp needs to be broken

const int XDCS = 27;

// Pin setup for the 23LC1024 RAM
const int RAMCS = 22;     // Chip select for the external RAM used for the ring buffer

// Setup the VS1053 Lemom player using standard hardware SPI pins
Lemon_VS1053 player = Lemon_VS1053(XRST, XCS, XDCS, DREQ);

// Set up the external RAM as a ring buffer
SPIRingBuffer ringBuffer(RAMCS);

// Initialize the LCD library by associating any needed LCD interface pins
// with the microcontroller pin number it is connected to
const int rs = 12, en = 2, d4 = 16, d5 = 4, d6 = 5, d7 = 21;
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

// The display bufer used for scolling text ticker tape style
const int DISPLAY_BUFFER_LEN = 16; // Number of characters the LCD can display
const int SPACING = 2;             // Number characters used to seperate strings
                                   // in a ticker tape style diplay
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

//volatile int checkControlStatus = 0;

// Setup the WIFI objects
//WiFiMulti WiFiMulti;  //TODO remove

// HTTP connection codes
const int HTTP_CODE_OK = 200;
const int HTTP_CONNECTION_TIMED_OUT = -1;
const int HTTP_CONNECTION_FAILED = -2;



// WiFi configuration using the defines in credentials.h
const char* ssid     = WIFI_SSID;
const char* password = WIFI_PWD;

// Dimensions of the station group data structure
const int maxNumberStationsInGroup = 20;
const int maxNumberGroups = 20;

const int PAYLOADLEN = 4000;
char payload[PAYLOADLEN];

// The structure containing the groups and the stations
Groups* groups;
Group* currentGroup;
Station* currentStation;

struct URL {
  String protocol = "";
  String host = "";
  String port = "";
  String path = "";
};

// Create a buffer  to read in the mp3 data. Thsi is set to DATABUFFERLEN as this
// is the amount that can be transfered to the VS1053 in one SPI operation.
const int DATABUFFERLEN = 32;
uint8_t mp3Buffer[DATABUFFERLEN];
int bufferIndex = 0;

// Number of bytes available in the read stream
size_t nBytes;

// Client to read the mp3 data from the internet station.
WiFiClient client;

// Default setting for the tone control
int toneControl = 0;

// Inhibits the loop from further processing if there was
// a failure with the setup
boolean setupFailure = false;

// A set of (normally fatal) errors that cannot be recovered from.
const int ERROR_CURRENT_STATION_NULL = -100;
const int ERROR_CURRENT_GROUP_NULL = -101;
const int ERROR_GROUP_NULL = -102;

// Function prototypes
void handleRedirect();
void handleOtherCode(int);
void setStation();
void initializeGroupStructure();
void readStationConfiguration();
void clearDisplayLine(int);
void tickerTape(int, char*, int, char*, int, int);
int  httpConnect(const char[]);
int  httpConnect(const char[], boolean);
void parseURL(const char[], URL*);
void printStationStucture();
void displayConnecting();
void printLCD(String, String);
void displayCurrentGroup();
void rollStationDisplay();
void printParsedURL(URL*);

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

  // Before initialising using the libraries make sure that the CS pins are
  // in the right state
  pinMode(XCS, OUTPUT);
  digitalWrite(XCS, HIGH);
  pinMode(XDCS, OUTPUT);
  digitalWrite(XDCS, HIGH);
  pinMode(RAMCS, OUTPUT);
  digitalWrite(RAMCS, HIGH);
  delay(1);

  // Initialise the ring buffer
  ringBuffer.begin();
  Serial.println("Ring buffer initialised.");

  // Initialize the player
  if ( !player.begin()) { // initialise the player
   Serial.println("Error in MP3 codec initialisation!");
     player.dumpRegs();
  } else {
     Serial.println("MP3 codec initialised.");
  }

  if (player.readyForData()) {
    Serial.println("Ready for data");
  } else {
    Serial.println("Not ready for data");
  }

  // Make sure the VS1053 is in MP3 mode.
  // For some boards this is not the case.
  while (!player.readyForData()) {}
  player.setMP3Mode();

  // Set the volume
  while (!player.readyForData()) {}
  player.setVolume(40,40);  // Higher is quieter.

  // Connect to the WIFI access point
  Serial.println("Attempting to connect to WIFI AP");
  displayConnecting();
  lcd.setCursor(0,1);
  lcd.print( "WiFi");

 
  // Wait for WiFi connection.  
  const int MAX_CONNECTION_ATTEMPTS = 20;
  int nAttempts = 0;

  WiFi.begin(ssid, password);

  while((WiFi.status() != WL_CONNECTED && nAttempts <  MAX_CONNECTION_ATTEMPTS)) {
    Serial.print("WiFi Connection attempt "); Serial.println(nAttempts + 1);
    delay(500);
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
     Serial.println("Connected to WIFI AP");
     printLCD("Connected to", "WiFi");
  }

  // Set the initial station
  // TODO Read the last station set from the EEPROM
  initializeGroupStructure();

  if((WiFi.status() == WL_CONNECTED)) {
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
  switch(controlButton.buttonCheck(millis(), digitalRead(controlButtonPin))) {
    case HOLD : // Toggle the selection state between group selection and stations selection;
             // Blick the group name and clear the station (second) line.
             if (selectionState == STATION_SELECT) selectionState = GROUP_SELECT;
             else {
               selectionState = STATION_SELECT;
               displayCurrentGroup();
               displayCurrentStation();
               // Reinitialise the  buffer
               bufferInitialized = false;
               ringBuffer.begin();
               setStation();
             }
             break;
    case CLICK :
              if (selectionState == GROUP_SELECT) {
                changeGroup();
                displayCurrentGroup();
                displayCurrentStation();
              } else {  // Station select
                // Reinitialise the buffer
                bufferInitialized = false;
                ringBuffer.begin();
                // Now change the station and connect to it
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
    // Stop music being played whilst the group is being selected
    return;
   }

   // Now check if the station length is longer than 16, i.e, the number of
   // characters that fit on a line in the LCD. If not then roll the
   // station name in the display ticker tape style.
   if (strlen(currentStation->getName()) > 16 && selectionState != GROUP_SELECT) {
     rollStationDisplay();
   }

  if (!bufferInitialized) {
    // Load up the buffer
    nBytes = client.available();
    if (nBytes) {
      // Read in chunks of up to 32 bytes

      //    availableSpace()       nBytes         ->    maxBytesToRead
      //    =================   =================     ===============
      //      >=DATABUFFERLEN   >DATABUFFERLEN         DATABUFFERLEN
      //      >=DATABUFFERLEN   <=DATABUFFERLEN        nBytes
      //      <DATABUFFERLEN          -               availableSpace

      if (ringBuffer.availableSpace() < DATABUFFERLEN) maxBytesToRead = ringBuffer.availableSpace();
      else maxBytesToRead = (nBytes> DATABUFFERLEN ? DATABUFFERLEN : nBytes);
      nRead = client.readBytes(mp3Buffer, maxBytesToRead);
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
      nBytes = client.available();
      if (nBytes) {
        // read up to 32 bytes
        nRead = client.readBytes(mp3Buffer, (nBytes> DATABUFFERLEN ? DATABUFFERLEN : nBytes));
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
 * Initialise the structure used to hold the stations and group data.
 */
void initializeGroupStructure() {
   groups = new Groups(maxNumberStationsInGroup, maxNumberGroups);
}

/*
 *  Read the station and group data from a file stored at a fixed URL on the
 *  Internet. In this way, the stations and groups can always be changed
 *  without having to reprogramm the firmware.
 */
void readStationConfiguration() {
  int fatalError = 0;

  Serial.print("HTTP begin to read stations...\n");
  lcd.clear();
  lcd.write("Reading stations");

  int httpCode = httpConnect(stationFile);

  // httpCode will be negative on error
  if (httpCode <= 0) {
    Serial.printf("Unable to read stations: HTTP GET... failed, error: %d\n", httpCode);
    return;
  }

  // HTTP header has been sent and server response header has been handled
  Serial.printf("[HTTP] GET stations... code: %d\n", httpCode);  //TODO get rid of printf fucntions

  // file found at server
  if (httpCode == HTTP_CODE_OK) {
    int index = 0;
    int c;
    boolean payloadFull = false;
    while ( (c = client.read()) != -1) {
      if (index < PAYLOADLEN - 1) {
        payload[index++] = c;
      } else {
        payloadFull = true;
        break;
      }
    }

  if (!payloadFull) {
      //Terminate the payload string
      payload[index] = '\0';
  } else {
    // Move backwards until the last CR and terminate the
    // sttring after this. In this way station definition
    // files that are too large for the payload buffer are
    // simply ignored (altough a console message is given)
    Serial.println("Station defintion file is too large for buffer and has been truncated.");

    while (payload[index] != '\r') {
      index--;
    }
    // Terminatethe string after the CR
    payload[index +1] = '\0';
  }

  int payloadLength = index;

  // Setup the groups structure
  groups->setup(payload, payloadLength);

  // Print out the group and station structure to the console
  printStationStucture();

  // Set the LCD to the first group and station
  if (groups != NULL) {
    groups->begin();
    currentGroup = groups->next();
    if (currentGroup != NULL) {
      lcd.clear();
      lcd.print(currentGroup->getName());
      currentGroup->begin();
      currentStation = currentGroup->next();
      if (currentStation != NULL)  {
        lcd.setCursor(0,1);
        lcd.print(currentStation->getName());
      } else {
        fatalError = ERROR_CURRENT_STATION_NULL;
      }
    } else {
      fatalError = ERROR_CURRENT_GROUP_NULL;
    }
  } else {
  fatalError = ERROR_GROUP_NULL;
  }

  if (fatalError) {
    Serial.printf("FATAL ERROR in setting up group/stations [%i]", fatalError );
    lcd.clear();
    lcd.print("ERROR: Get Help!");
  }

  client.stop();

  }
} // -- readStationConfiguration

/*
 * Display the selected group in top line of the  LCD display
 */
void displayCurrentGroup() {
  clearDisplayLine(0);
  if (currentGroup != NULL) {
    lcd.setCursor(0,0);
    lcd.print(currentGroup->getName());
  }
  statusDisplayState = GROUP;
  displayCurrentStation();
}

/*
 * Display the selected station in the bottom line of the LCD display
 */
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

/*
 *  Show the user in the top line of the LCD display that the radio is attempting to
 *  connect to the selected station.
 */
void displayConnecting() {
  clearDisplayLine(0);
  lcd.setCursor(0,0);
  lcd.print("Connecting to");
  statusDisplayState = CONNECT;
}

/*
 * Change to the next station in the current group. If no more stations
 * then loop back to the first station in the group.
 */
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

/*
 * Change to the next group. If no more groups then loop back to the
 * first group.
 */
void changeGroup() {
  currentGroup = groups->next();
  if (currentGroup == NULL) {  // Cycle through the groups
   groups->begin();
   currentGroup = groups->next();
  }

  // Set the first station in the group
  currentGroup->begin();
  currentStation = currentGroup->next();
}

/*
 * Roll the station name ticker type style. In this way long stations names
 * are fully displayed.
 */
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

/*
 * Blink the name of the group. This is used to show the user that the radio
 * is in group selection mode.
 */
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

/*
 * Basic ticker tape functionality
 * Note:  Step < length of display
 */
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
 * Set the station.
 */
void setStation() {

  // Disconnect if already connected
  if (client.connected()) {
    client.stop();
  }

  Serial.print("[HTTP] begin connection to ");
  Serial.print(currentStation->getName());
  Serial.println(" ...");

  displayConnecting();
  displayCurrentStation();

  // Connect to the server , read any headers and set up the client to
  //  the start of the MP3 stream.
  int httpCode = httpConnect(currentStation->getURL(), true);

  // HTTP header has been send and server response header has been handled
  Serial.printf("[HTTP] GET... code: %d\n", httpCode);

  if (httpCode != HTTP_CODE_OK) {
    handleOtherCode(httpCode);
  }

}



/*
 *  Handles other HTTP codes.
 *  Not much we can do with them apart from notifing the user that
 *  something has gone terribly wrong.
 */
void handleOtherCode(int httpCode) {
  // TODO as part of the general error handling
  Serial.printf("[HTTP] GET... failed, error[%d] \n", httpCode);

  String msg = "";
  msg.concat("Error Code:");
  String msgCode = String(httpCode);
  msg.concat(msgCode);
  Serial.print("MSG: "); Serial.println(msg);

  printLCD("ERROR - Get Help!", msg);

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

/*
 * Helper function to connect to a site without specifying
 * that the connection shoudl be kept alive.
 */
int httpConnect(const char urlString[]) {
  return httpConnect(urlString, false);
}

/*
 * Connect to the site specified by the urlString. In addtion
 * the connection can be requested to stay alive as is required
 * for streaming responses.
 * Returns the HTTP response code.
 * Note: we are not using a standard HTTP library to do this as some
 * stations do not conform to the HTTP standard and do not return
 * standard HTTP response headers. This routine handles this case.
 *
 */
int httpConnect(const char urlString[], boolean stayAlive) {
  URL url;
  String protocol;
  String responseCode;
  String headerFields;

  parseURL(urlString, &url);

  Serial.println("Connecting to station at URL ...");
  Serial.print("   ");
  printParsedURL(&url);
  Serial.println();

  int httpPort;
  if (url.port.length() == 0) httpPort =  80;
  else httpPort = url.port.toInt();

  if (!client.connect(url.host.c_str(), httpPort)) {
      Serial.println("Connection failed");
      return HTTP_CONNECTION_FAILED;  //TODO Failed to connect
  }


  Serial.print("Requesting URL: ");


  // This will send the GET request to the server
  String request = String("GET ") + url.path + " HTTP/1.1\r\n" +
               "Host: " + url.host + "\r\n";
  if (stayAlive) request +=  "Connection: keep-alive\r\n";
  request += "\r\n";

//  client.print(String("GET ") + url.path + " HTTP/1.1\r\n" +
//               "Host: " + url.host + "\r\n" +
//               "Connection: keep-alive\r\n\r\n");
  client.print(request);

  unsigned long timeout = millis();
  while (client.available() == 0) {
      if (millis() - timeout > 5000) {
          Serial.println("ERROR: Timeout!");
          client.stop();
          return HTTP_CONNECTION_TIMED_OUT;  //TODO timeout
      }
  }

  // Now read the response code.
  char c;
  while (client.available() && (c = client.read()) != ' ') {
    protocol += c;
  }

  Serial.println("PARSED RESPONSE HEADER -->");
  Serial.print(protocol);
  Serial.print(' ');


   while (client.available() && (c = client.read()) != ' ') {
    responseCode += c;
  }
  Serial.print(responseCode);
  Serial.print(' ');


  int endHeaderCount = 0 ;
  while (client.available()) {
    c = client.read();
    headerFields += c;

    if  (c == '\r' || c == '\n' ) endHeaderCount++;
    else endHeaderCount = 0;

    if (endHeaderCount == 4) {
      Serial.println(headerFields);
      break;
    }
  }
  Serial.println("<---- END PARSED RESPONSE HEADER");

  return responseCode.toInt();
}

/*
 * Parses a URL (as string) into its component parts and places the result
 * in the specified structure.
 */
void parseURL(const char urlString[], URL* url) {
  // Assume a valid URL

  enum URLParseState {PROTOCOL, SEPERATOR, HOST, PORT, PATH} state = PROTOCOL;

  url->protocol = "";
  url->host = "";
  url->port = "";
  url->path = "/";


  for (int i = 0; urlString[i] != '\0'; i++) {
      switch(state)
    {
      case PROTOCOL: if (urlString[i] == ':') state = SEPERATOR;
                     else url->protocol += urlString[i];
                     break;
      case SEPERATOR: if (urlString[i] != '/') {
                          state = HOST;
                          url->host += urlString[i];
                      }
                      break;
      case HOST: if (urlString[i] == ':') state = PORT;
                 else {
                   if (urlString[i] == '/') state = PATH;
                   else url->host += urlString[i];
                   }
                 break;
      case PORT: if (urlString[i] == '/') state = PATH;
                 else  url->port += urlString[i];
                 break;
      case PATH: url->path += urlString[i];

    }
  }
}


//* Print to the console the group and station structure
void printStationStucture() {

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
}

/*
 * Prints out a formatted version of the URL. Only used for test purposes.
 */
void printParsedURL(URL* url) {
  Serial.print(url->protocol);
  Serial.print("://");
  Serial.print(url->host);
  if (url->port.length() > 0) {
    Serial.print(":");
    Serial.print(url->port);
  }
  //Serial.print("/");
  Serial.println(url->path);
}
