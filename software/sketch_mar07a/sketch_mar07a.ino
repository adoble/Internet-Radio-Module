#include <Arduino.h>

#ifdef ESP32
    #include <WiFi.h>
#else
    #include <ESP8266WiFi.h>
#endif

#include "PushButton.h"

// WIFI credentials
#include "credentials.h"



// Stations
const char *stationsFileHost = "www.andrew-doble.homepage.t-online.de";
const char *stationsFilePath = "/ir/stations.txt";
struct Station {
  char *group;
  char *name;
  char *url;
};
const int MAX_NUMBER_STATIONS = 100;
Station stations[MAX_NUMBER_STATIONS];
int numberStations; 
int currentStation = 0;


const int stationButtonPin = 4;
PushButton stationButton(stationButtonPin);
boolean stationButtonPressed = false;

WiFiClient client;



void setup()
{
  // Set up mute button pin
  pinMode(stationButtonPin, INPUT_PULLUP);

  Serial.begin(115200);
  delay(1000);
  Serial.println("Connecting to WiFi");

  WiFi.disconnect();
  WiFi.softAPdisconnect(true);
  WiFi.mode(WIFI_STA);

  WiFi.begin(WIFI_SSID, WIFI_PWD);

  // Try forever
  while (WiFi.status() != WL_CONNECTED) {
    Serial.println("...Connecting to WiFi");
    delay(1000);
  }
  Serial.println("Connected to WiFi");

  // Read in the stations file
  if (client.connect(stationsFileHost, 80)) {
    Serial.println("Connected to server");
    // Make a HTTP request:
    client.print("GET ");
    client.print(stationsFilePath);
    client.println(" HTTP/1.1");
    
    client.print("Host: ");
    client.println(stationsFileHost);
    
    client.println("Connection: close");
    client.println();
  }

  while (client.available()) {
    char c = client.read();
    Serial.write(c);
  }

  // if the server's disconnected, stop the client:
  if (!client.connected()) {
    Serial.println();
    Serial.println("disconnecting from server.");
    client.stop();

    // do nothing forevermore:
    while (true);
  }
}

  
 
void loop()
{
  if (stationButton.sense() == HIGH) stationButtonPressed = true;

  if (stationButtonPressed && (stationButton.sense() == LOW)) {
    // Change on releasing the button
    stationButtonPressed = false;
    currentStation++;
    if (currentStation >= numberStations) currentStation = 0;
    //tuneIntoStation(stationURLs[currentStation]);
  }
}




