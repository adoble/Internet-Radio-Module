/**
 * Stations.ino
 *
 *  Created on: 24.05.2015
 *
 */

#include <Arduino.h>

#include <WiFi.h>
#include <WiFiMulti.h>
#include <LiquidCrystal.h>
#include "PushButtonClicks.h"


#include <HTTPClient.h>
#include "credentials.h"

#include "Groups.h"



WiFiMulti wifiMulti;

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

// initialize the LCD library by associating any needed LCD interface pins
// with the microcontroller pin number it is connected to
const int rs = 16, en = 2, d4 = 4, d5 = 17, d6 = 15, d7 = 5;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);
long blinkTime = 0;
long currentTime = 0;
boolean blankDisplay = true;


// The control push button
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

// The display bufer used for scolling text tciker tape style
const int DISPLAY_BUFFER_LEN = 16; // Number of characters the LCD can display
const int SPACING = 2; // Number characters used to seperate strings in
                       // a ticker tape style diplay
const int ROLL_DISPLAY_TIME = 350; // How quickly the display is rolled in ms
int scrollTime;
char displayBuffer[DISPLAY_BUFFER_LEN + 1];
int tickerTapeStep = 0;

// Function declarations
void initializeGroupStructure();
void readStationConfiguration();
void clearLCDLine(int);
void tickerTape(int, char*, int, char*, int, int); 

void setup() {
    String msg;

    selectionState = STATION_SELECT;;

    Serial.begin(115200);

    // Set up the control button
    pinMode(controlButtonPin, INPUT_PULLUP);

    // set up the LCD with the  number of columns and rows
    lcd.begin(16, 2);



    Serial.println();


    msg = "Connect to WIFI";
    lcd.print(msg);
    for(uint8_t t = 4; t > 0; t--) {
      lcd.setCursor(0, 1);
      //Serial.println(msg);
      lcd.print(t);
      delay(1000);
    }

    wifiMulti.addAP(WIFI_SSID, WIFI_PWD);

    initializeGroupStructure();

    if((wifiMulti.run() == WL_CONNECTED)) {
       lcd.clear();
       lcd.print("Connected to WIFI");
       readStationConfiguration();

    }

    // Set all timing variables to now
    scrollTime = currentTime = blinkTime = millis();

}

void loop() {


    switch(controlButton.buttonCheck(millis(), digitalRead(controlButtonPin))) {
      case HOLD : // Toggle the selection state between group selection and stations selection;
               // Blick the group name and clear the station (second) line.
               if (selectionState == STATION_SELECT) selectionState = GROUP_SELECT;
               else {
                 selectionState = STATION_SELECT;
                 displayCurrentGroup();
               }
               break;
      case CLICK :
                if (selectionState == GROUP_SELECT) {
                  changeGroup();
                } else {  // Station select
                  changeStation();
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
  clearLCDLine(0);
  if (currentGroup != NULL) {
    lcd.setCursor(0,0);
    lcd.print(currentGroup->getName());
  }
  displayCurrentStation();
}

void displayCurrentStation() {
  if (currentStation == NULL) {
    currentGroup->begin();
    currentStation = currentGroup->next();
  }
  if (currentStation != NULL) {
    clearLCDLine(1);
    lcd.setCursor(0,1);
    lcd.print(currentStation->getName());
  }
}

void changeStation() {
  currentStation = currentGroup->next();
  if (currentStation == NULL) {
    currentGroup->begin();
    currentStation = currentGroup->next();
  }
  if (currentGroup == NULL) Serial.println("PANIC GROUP");
  if (currentStation == NULL) Serial.println("PANIC STATION");
  //lcd.clear();
  //lcd.home();
  clearLCDLine(0);
  lcd.setCursor(0,0);
  lcd.print(currentGroup->getName());
  clearLCDLine(1);
  lcd.setCursor(0,1);
  lcd.print(currentStation->getName());
  tickerTapeStep = 0;
}

void changeGroup() {
  currentGroup = groups->next();
  if (currentGroup == NULL) {  // Cycle through the groups
   groups->begin();
   currentGroup = groups->next();
  }
  // Display the group name
  //lcd.clear();
  //lcd.home();
  clearLCDLine(0);
  lcd.setCursor(0,0);
  lcd.print(currentGroup->getName());

  // Set and display the first station in the group
  changeStation();
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

 void clearLCDLine(int line) {
   if (line < 2) {
    lcd.setCursor(0, line);
    lcd.print("                ");
   }
 }

