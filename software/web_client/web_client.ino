/*
 *  This sketch requests data over HTTP from a radio station
 *
 */

#include <WiFi.h>

#include "credentials.h"

const char* ssid     = WIFI_SSID;
const char* password = WIFI_PWD;

//const char* host = "streams.rpr1.de";
//const char* requestURI = "/rpr-kaiserslautern-128-mp3";

//const char * stationURL = "http://streams.rpr1.de/rpr-kaiserslautern-128-mp3";
const char * stationURL = "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio1_mf_p";
//String stationURL = "http://streams.rpr1.de/rpr-kaiserslautern-128-mp3";

struct URL {
  String protocol = "";
  String host = "";
  String port = "";
  String path = "";
};


uint8_t mp3Buffer[128];
int nRead = 0;

WiFiClient client;

// Function prototypes
int connectStation(String);
void parseURL(String, URL*);
void printURL(URL*);


void setup()
{
    Serial.begin(115200);
    delay(10);

    // We start by connecting to a WiFi network

    Serial.println();
    Serial.println();
    Serial.print("Connecting to ");
    Serial.println(ssid);

    WiFi.begin(ssid, password);

    while (WiFi.status() != WL_CONNECTED) {
        delay(500);
        Serial.print(".");
    }

    Serial.println("");
    Serial.println("WiFi connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());

    int responseCode = connectStation(stationURL);

    Serial.print("HTTP Response Code: ");
    Serial.println(responseCode);


}

void loop()
{

    // Read all the bytes  of the reply from server
    if(client.available()) {
        nRead = client.readBytes(mp3Buffer, 128);
        Serial.println(nRead);
    }


}

/**
* Connect to the station specified by the urlString.
* Returns the HTTP response code
*/
int connectStation(String urlString) {
  URL url;
  
//TEST
//  parseURL("http://stations.com/streaming/music.mp3", &url);
//  printURL(&url);
//  parseURL("http://domain.stations.com/channels/pop/more_music", &url);
//  printURL(&url);
//  parseURL("http://domain.stations.com:80/x/more_music.mp3", &url);
//  printURL(&url);
//
//  return -1000;
//  
  parseURL(urlString, &url);


  int httpPort;
  if (url.port.length() == 0) httpPort =  80;
  else httpPort = url.port.toInt();

  if (!client.connect(url.host.c_str(), httpPort)) {
      Serial.println("Connection failed");
      return -2;  //TODO Failed to connect
  }

  // We now create a URI for the request
  //String url = requestURI;


  Serial.print("Requesting URL: ");
  printURL(&url);

  // This will send the request to the server
  client.print(String("GET ") + url.path + " HTTP/1.1\r\n" +
               "Host: " + url.host + "\r\n" +
               "Connection: keep-alive\r\n\r\n");

  unsigned long timeout = millis();
  while (client.available() == 0) {
      if (millis() - timeout > 5000) {
          Serial.println("ERROR: Timeout!");
          client.stop();
          return -1;  //TODO timeout
      }
  }

  // Now read the response code.
  String protocol;
  String responseCode;
  String headerFields;

  char c;
  while (client.available() && (c = client.read()) != ' ') {
    protocol += c;
  }
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

  return responseCode.toInt();
}

void parseURL(String urlString, URL* url) {
  // Assume a valid URL

  enum URLParseState {PROTOCOL, SEPERATOR, HOST, PORT, PATH} state = PROTOCOL;

  url->protocol = "";
  url->host = "";
  url->port = "";
  url->path = "/";


  for (int i = 0; i < urlString.length(); i++) {
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

void printURL(URL* url) {
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
