#include <Arduino.h>

#ifdef ESP32
    #include <WiFi.h>
#else
    #include <ESP8266WiFi.h>
#endif
#include "AudioFileSourceHTTPStream.h"
#include "AudioFileSourceBuffer.h"
#include "AudioGeneratorMP3.h"
#include "AudioOutputI2S.h"

#include <LiquidCrystal.h>
#include "PushButtonClicks.h"  

// WIFI credentials
#include "credentials.h"

// To run, set your ESP8266 build to 160MHz, update the SSID info, and upload.

// Stations
const int NUMBER_STATIONS = 3;
char *stationURLs[NUMBER_STATIONS] = {
      "http://streams.rpr1.de/rpr-kaiserslautern-128-mp3", // RPR1
      "http://streams.rpr1.de/rpr-80er-128-mp3", // RPR1 Best of the 80s - 128kbs
      "https://dg-swr-https-fra-dtag-cdn.sslcast.addradio.de/swr/swr3/live/mp3/128/stream.mp3" // SWR3 - 128kps
      };
int currentStation = 0;
// RPR1 URL
//const char *stationURL="http://streams.rpr1.de/rpr-kaiserslautern-128-mp3";

// Default volume
const long volume = 0.2;

// The main "components" of the radio
AudioGeneratorMP3 *mp3;
AudioFileSourceHTTPStream *file;
AudioFileSourceBuffer *buff;
AudioOutputI2S *out;

// WIRING
// Initialize the LCD library by associating any needed LCD interface pins
// with the microcontroller pin number it is connected to
const int rs = 2, en = 15, d4 = 5, d5 = 18, d6 = 23, d7 = 19;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

// The control push button
PushButton controlButton;
const int controlButtonPin = 4;

// Called when a metadata event occurs (i.e. an ID3 tag, an ICY block, etc.
void MDCallback(void *cbData, const char *type, bool isUnicode, const char *string)
{
  const char *ptr = reinterpret_cast<const char *>(cbData);
  (void) isUnicode; // Punt this ball for now
  // Note that the type and string may be in PROGMEM, so copy them to RAM for printf
  char s1[32], s2[64];
  strncpy_P(s1, type, sizeof(s1));
  s1[sizeof(s1)-1]=0;
  strncpy_P(s2, string, sizeof(s2));
  s2[sizeof(s2)-1]=0;
  Serial.printf("METADATA(%s) '%s' = '%s'\n", ptr, s1, s2);
  Serial.flush();

}

// Called when there's a warning or error (like a buffer underflow or decode hiccup)
void StatusCallback(void *cbData, int code, const char *string)
{
  const char *ptr = reinterpret_cast<const char *>(cbData);
  // Note that the string may be in PROGMEM, so copy it to RAM for printf
  char s1[64];
  strncpy_P(s1, string, sizeof(s1));
  s1[sizeof(s1)-1]=0;
  Serial.printf("STATUS(%s) '%d' = '%s'\n", ptr, code, s1);
  Serial.flush();
}


void setup()
{
  // Set up the LCD with the  number of columns and rows
    lcd.begin(16, 2);
  
  // Set up contrl button
  pinMode(controlButtonPin, INPUT_PULLUP);

  Serial.begin(115200);
  delay(1000);
  
  Serial.println("Connecting WiFi");
  lcd.clear();
  lcd.home();
  lcd.print("WiFi Connecting");

  WiFi.disconnect();
  WiFi.softAPdisconnect(true);
  WiFi.mode(WIFI_STA);

  WiFi.begin(WIFI_SSID, WIFI_PWD);

  // Try forever
  while (WiFi.status() != WL_CONNECTED) {
    Serial.println("...Connecting to WiFi");
    delay(1000);
  }
  Serial.println("Connected");
  lcd.clear();
  lcd.home();
  lcd.print("WiFI Connected");

  tuneIntoStation(stationURLs[currentStation]);
}


void loop()
{
  continueMP3();

 
}



void continueMP3()
{
  static int lastms = 0;

  if (mp3->isRunning()) {
    if (millis()-lastms > 1000) {
      lastms = millis();
      Serial.printf("Running for %d ms...\n", lastms);
      Serial.flush();
     }
    if (!mp3->loop()) mp3->stop();
  } else {
    Serial.printf("MP3 done\n");
    delay(1000);
  }

}


void stopPlaying()
{
  if (mp3) {
    mp3->stop();
    delete mp3;
    mp3 = NULL;
  }
  if (buff) {
    buff->close();
    delete buff;
    buff = NULL;
  }
  if (file) {
    file->close();
    delete file;
    file = NULL;
  }
}

void tuneIntoStation(char *stationURL)
{
  stopPlaying();

  Serial.print("Station: ");
  Serial.println(stationURL);

  file = new AudioFileSourceHTTPStream(stationURL);
  file->RegisterMetadataCB(MDCallback, (void*)"ICY");
  //buff = new AudioFileSourceBuffer(file, 2048);
  buff = new AudioFileSourceBuffer(file, 16384);
  //buff = new AudioFileSourceBuffer(file, 32768);

  buff->RegisterStatusCB(StatusCallback, (void*)"buffer");
  out = new AudioOutputI2S(); // EXTERNAL DAC
  out->SetGain(0.2);
  mp3 = new AudioGeneratorMP3();
  mp3->RegisterStatusCB(StatusCallback, (void*)"mp3");
  mp3->begin(buff, out);

  if (mp3->isRunning()) {
    Serial.print("Tuned into: ");
    Serial.println(stationURL);
  } else {
    Serial.println("Cannot connect to URL");
  }

  
}
