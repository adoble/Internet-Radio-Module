#include <SPI.h>

SPISettings spiSettings(8000000, MSBFIRST, SPI_MODE0);

uint8_t i=0;

void setup() {
  Serial.begin(115200);


  // do this first, for Reasons
  SPI.begin();
}

void loop() {
  Serial.println(i);
  SPI.beginTransaction(spiSettings);
  SPI.transfer(B10101010);

  SPI.endTransaction();
  i++;
}
