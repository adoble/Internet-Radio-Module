#include <Arduino.h>

const int testPin = 2;

void setup() {
  pinMode(testPin, OUTPUT);

}

void loop() {
  digitalWrite(testPin, HIGH);
  delay(10);
  digitalWrite(testPin, LOW);
  delay(10); 
  
}
