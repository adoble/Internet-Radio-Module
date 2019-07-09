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
const int rs = 2, en = 15, d4 = 5, d5 = 18, d6 = 23, d7 = 19;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);
long blinkTime = 0;
long currentTime = 0;
boolean blankDisplay = true;
  

// The control push button
PushButton controlButton;
const int controlButtonPin = 4;

// The system states
enum State {INITIAL, STATION_SELECT, GROUP_SELECT} state;

void initializeGroupStructure(); 
void readStationConfiguration();

void setup() {
    String msg; 

    state = STATION_SELECT;;

    Serial.begin(115200);

    // Set up the control button
    pinMode(controlButtonPin, INPUT_PULLUP);
    
    // set up the LCD with the  number of columns and rows
    lcd.begin(16, 2);

    currentTime = blinkTime = millis();

    blinkTime = millis();

    Serial.println();

    
    msg = "Connect to WIFI";
    lcd.print(msg);
    for(uint8_t t = 4; t > 0; t--) {
      lcd.setCursor(0, 1);
      //Serial.println(msg);
      lcd.print(t);
      //Serial.flush();
      delay(1000);
    }

    wifiMulti.addAP(WIFI_SSID, WIFI_PWD);

    initializeGroupStructure();

    if((wifiMulti.run() == WL_CONNECTED)) {
       lcd.clear();
       lcd.print("Connected to WIFI");
       readStationConfiguration();

    }

}

void loop() {

  
    switch(controlButton.buttonCheck(millis(), digitalRead(controlButtonPin))) {
      case 0 : //Serial.println("Nothing or Bounce"); 
               break;
      case 1 : // Pressed and not released for a long time
               // Blick the group name and clear the station (second) line
               if (state == STATION_SELECT) state = GROUP_SELECT;
               else {
                 state = STATION_SELECT;
                 lcd.clear();
                 lcd.setCursor(0,0);
                 lcd.print(currentGroup->getName());
                 lcd.setCursor(0,1);
                 currentStation = currentGroup->next();
                 if (currentStation == NULL) {
                   currentGroup->begin();
                   currentStation = currentGroup->next();
                 }
                 lcd.print(currentStation->getName());
               }
               
               break;
              
      case 2 : Serial.println("Pressed and released after a long time"); break;
      case 3 : Serial.println("A click"); 
               if (state == GROUP_SELECT) {
                currentGroup = groups->next();
                if (currentGroup == NULL) {  // Cycle through the groups
                  groups->begin();
                  currentGroup = groups->next();
                }
                lcd.clear();
                lcd.home();
                lcd.print(currentGroup->getName());
               } else {  // Station select
                currentStation = currentGroup->next();
                if (currentStation == NULL) {
                  currentGroup->begin();
                  currentStation = currentGroup->next();
                }
                if (currentGroup == NULL) Serial.println("PANIC GROUP");
                if (currentStation == NULL) Serial.println("PANIC STATION");
                lcd.clear();
                lcd.home();
                lcd.print(currentGroup->getName());
                lcd.setCursor(0,1);
                lcd.print(currentStation->getName());
               }
               break;
      case 4 : Serial.println("Double click"); break;
      case 5 : Serial.println("Triple click"); break;
      case 6 : Serial.println("Four clicks"); break;
      case 7 : Serial.println("Five clicks"); break;
   }

   switch (state) {
    case INITIAL: //DO NOTHING  TODO Simplify code
                break;
    case STATION_SELECT: 
                // Make sure the stations are shown
//                lcd.setCursor(0,0);
//                lcd.print(currentGroup->getName());
//                lcd.setCursor(0,1);
//                lcd.print(currentStation->getName());
//                state = INITIAL;
                break;
    case GROUP_SELECT:   
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
                break;
     default: Serial.println("UNKNOWN STATE");
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

/*void parseStationLine(String line) {
  int startIndex = 0;
  int index = line.indexOf(SEPERATOR);



  Station* sp =  addStation(
  while (index > -1) {
    index = line.indexOf(
  }

}*/
