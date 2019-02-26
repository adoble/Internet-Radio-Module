#include <Arduino.h>

#include "ToggleButton.h"

const int buttonPin = 4;  //GPIO 4
int oldButtonValue = LOW;

ToggleButton button(buttonPin);

void setup()
{
  pinMode(buttonPin, INPUT_PULLUP);

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
