#include <Arduino.h>

#include "PushButton.h"

const int buttonPin = 4;  //GPIO 4
int oldButtonValue = LOW;

PushButton button(buttonPin);

void setup()
{
  pinMode(buttonPin, INPUT);

  Serial.begin(115200);

}

void loop()
{
  int buttonValue = button.sense();

  if (buttonValue != oldButtonValue) {
    Serial.print("Button: ");
    Serial.println((buttonValue==HIGH)?"HIGH":"LOW");
    oldButtonValue = buttonValue;
  }

}
