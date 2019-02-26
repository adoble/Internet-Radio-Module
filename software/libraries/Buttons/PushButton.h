/**
* A push button class that debounces the button based on this state
*  machine:

+-------------------------------------------------------------------------+
|                           ___________                                    |
|                           noisySignal / clearTimer                       |
|                              +-------+                                  |
|                              |       | +----------+                     |
|                              |       v |          |                     |
|                            +-+-------+-++         +       _________     |
|                            |NOT PRESSED |   noisySignal & timerDone     |
|                            +---+----+--++         +                     |
|                                ^    |  ^          |                     |
|                                |    |  +----------+                     |
|                                |    |                                   |
|         ___________            |    |                                   |
|         noisySignal & timerDone|    |noisySignal & timerDone            |
|                                |    |                                   |
|                    +---------+ |    |  +----+                           |
|                    |         | |    |  |    |                           |
|                    |         v |    v  v    |                           |
|  ___________       |       +-+-+----+--++   |                           |
|  noisySignal &     |       |  PRESSED   |   |noisySignal / clearTimer   |
|  _________         |       +-+--------+-+   |                           |
|  timerDone         |         |        |     |                           |
|                    +---------+        +-----+                           |
|                                                                         |
+-------------------------------------------------------------------------+


  *
  * (Diagram done with http://asciiflow.com/)
  *
  */



#include <Arduino.h>

#ifndef _PUSHBUTTON_H
#define _PUSHBUTTON_H

class PushButton
{
  public:
    enum Configuration {BUTTON_PULLDOWN, BUTTON_PULLUP};

    PushButton(int pin);
    PushButton(int pin, Configuration configuration);

    int sense();
    void setDelay(unsigned int delayInMilliseconds);



  private:
    unsigned int debounceDelay = 50; // Default ms to wait until stable
    enum  buttonStates {notPressed, pressed};
    enum buttonStates buttonState = notPressed;
    boolean buttonWasPressed = false;
    unsigned long timer;
    int pin;
    Configuration configuration;
    boolean inverted;

};

#endif
