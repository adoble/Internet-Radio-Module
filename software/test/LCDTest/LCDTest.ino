/*
  LiquidCrystal Library - Blink

 Demonstrates the use a 16x2 LCD display.  The LiquidCrystal
 library works with all LCD displays that are compatible with the
 Hitachi HD44780 driver. There are many of them out there, and you
 can usually tell them by the 16-pin interface.

 This sketch prints "Hello World!" to the LCD and makes the
 cursor block blink.

 The circuit:
  * LCD RS pin to digital pin 12
 * LCD Enable pin to digital pin 2
 * LCD D4 pin to digital pin 4
 * LCD D5 pin to digital pin 17
 * LCD D6 pin to digital pin 15
 * LCD D7 pin to digital pin 5
 * LCD R/W pin to ground
 * 10K resistor:
   * ends to +5V and ground
   * wiper to LCD VO pin (pin 3)

 Based on the following: 
 Library originally added 18 Apr 2008
 by David A. Mellis
 library modified 5 Jul 2009
 by Limor Fried (http://www.ladyada.net)
 example added 9 Jul 2009
 by Tom Igoe
 modified 22 Nov 2010
 by Tom Igoe
 modified 7 Nov 2016
 by Arturo Guadalupi

 This example code is in the public domain.

 http://www.arduino.cc/en/Tutorial/LiquidCrystalBlink

*/

// include the library code:
#include <LiquidCrystal.h>

// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
//const int rs = 12, en = 2, d4 = 4, d5 = 17, d6 = 15, d7 = 5;
const int rs = 12, en = 2, d4 = 16, d5 = 4, d6 = 5, d7 = 21;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

// delay time (ms)
const int delayTime = 2000; 

void setup() {
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("hello, world!");
}

void loop() {
  // Turn off the blinking cursor:
  lcd.noBlink();
  delay(delayTime);
  // Turn on the blinking cursor:
  lcd.blink();
  delay(delayTime);
  delay(250);
}