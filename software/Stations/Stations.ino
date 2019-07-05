/**
 * Stations.ino
 *
 *  Created on: 24.05.2015
 *
 */

#include <Arduino.h>

#include <WiFi.h>
#include <WiFiMulti.h>

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

void readStationConfiguration();

void setup() {

    Serial.begin(115200);

    Serial.println();
    Serial.println();
    Serial.println();

    for(uint8_t t = 4; t > 0; t--) {
        Serial.printf("[SETUP] WAIT %d...\n", t);
        Serial.flush();
        delay(1000);
    }

    wifiMulti.addAP(WIFI_SSID, WIFI_PWD);

    //initializeGroupStructure();

    if((wifiMulti.run() == WL_CONNECTED)) {
       readStationConfiguration();

    }

}

void loop() {
        delay(5000);
}



void readStationConfiguration() {
  HTTPClient http;


  Serial.print("[HTTP] begin...\n");
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
 
          Groups* groups = new Groups(maxNumberStationsInGroup, maxNumberGroups);

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
