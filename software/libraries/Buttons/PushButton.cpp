#include "PushButton.h"

PushButton::PushButton(int pin) : pin(pin), configuration(BUTTON_PULLDOWN)
{
  inverted = configuration==BUTTON_PULLUP? true: false;
}

PushButton::PushButton(int pin, Configuration configuration) : pin(pin), configuration(configuration)
{
  inverted = configuration==BUTTON_PULLUP? true: false;
}

int PushButton::sense()
{
  boolean noisySignal = digitalRead(pin);
  if (inverted) noisySignal = !noisySignal;

  if (buttonState == notPressed) {
     if (noisySignal) {
       if ((millis() - timer) >= debounceDelay) {
         buttonState = pressed;
       }
     } else {
      timer = millis();
     }

  } else { // buttonState == pressed
    if (noisySignal) {
      timer = millis();
    }
    else { // Button has returned to notPressed (maybe transisently)
      if ((millis() - timer) >= debounceDelay) {
        buttonState = notPressed;
      }
    }
  }

  return ((buttonState==pressed)^inverted)? HIGH: LOW;
}

void PushButton::setDelay(unsigned int delayInMilliseconds)
{
  this->debounceDelay = delayInMilliseconds;
}
