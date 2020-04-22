/*
 * Ocillates the signals on a set of pins.
 */

 const int DELAY = 100;


// LED Pins
//const int rs = 12, en = 2, d4 = 4, d5 = 17, d6 = 15, d7 = 5;  //DIFFERS FROM PCB DESIGN!

//VS1053 Pins
const int xcs = 25, dreq = 26, xdcs = 27, si = 23, so = 19, sck = 18, xrst = 33;
int pins[] = {xcs, dreq, xdcs, si, so, sck, xrst, -1}; // Terminated with a negative number


void setup() {
  

  for (int i = 0; pins[i] > 0 ; i++) {
    pinMode(pins[i], OUTPUT);
  }

  Serial.begin(115200);

 
}

void loop() {
  Serial.println("BlinkTest");
  
  for (int i = 0; pins[i] > 0; i++) {
    digitalWrite(pins[i], HIGH);   
  }
  
  delay(DELAY);    
                     
  for (int i = 0; pins[i] > 0; i++) {
    digitalWrite(pins[i], LOW);   
  }
 
  delay(DELAY);                      

}
