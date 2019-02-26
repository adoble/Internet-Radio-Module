#include "ToggleButton.h"

ToggleButton::ToggleButton(int pin) : button(pin)
{
}

ToggleButton::ToggleButton(int pin, PushButton::Configuration configuration): button(pin, configuration)
{
}

int ToggleButton::sense()
{
  boolean pressed;

  pressed = (button.sense() == LOW);

  if (pressed) {
    buttonWasPressed = true;
  }
  else {
    if (buttonWasPressed) {
      // Button is now released so toggle state
      state = (state==HIGH)?LOW:HIGH;
      buttonWasPressed = false;
    }
  }

  return state;
}

void ToggleButton::setDelay(unsigned int delayInMilliseconds)
{
  button.setDelay(delayInMilliseconds);
}
