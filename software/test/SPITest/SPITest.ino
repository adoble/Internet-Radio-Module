#include <SPI.h>

SPIClass * spi = NULL;

SPISettings spiSettings(8000000, MSBFIRST, SPI_MODE0);
//SPISettings spiSettings(800000, MSBFIRST, SPI_MODE0);

const int pinSCLK = 18;
const int pinMISO = 19;
const int pinMOSI = 23;
const int pinSS = 36;


void setup() {
  Serial.begin(115200);

  spi = new SPIClass(VSPI);
  // do this first, for Reasons
  spi->begin();
  //spi->begin(pinSCLK, pinMISO, pinMOSI, pinSS); 
}

uint8_t i=0;
void loop() {
  Serial.println(i);
  spi->beginTransaction(spiSettings);
 // mySPI.beginTransaction(SPISettings(16000000, MSBFIRST, SPI_MODE0));
  //mySPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE0));
  //mySPI.transfer(i++);
  spi->transfer(B01010101);

  spi->endTransaction();
  i++;
}
