/**
* A toogle button class that debounces the button based
*/
#include <Arduino.h>

#include "PushButton.h"

#ifndef _TOOGLEBUTTON_H
#define _TOOGLEBUTTON_H

class ToggleButton
{
  public:
    enum Configuration {BUTTON_PULLDOWN, BUTTON_PULLUP};

    ToggleButton(int pin);
    ToggleButton(int pin, PushButton::Configuration configuration);

    int sense();
    void setDelay(unsigned int delayInMilliseconds);



  private:
    PushButton button;
    boolean buttonWasPressed = false;
    int state = LOW;

};

#endif
