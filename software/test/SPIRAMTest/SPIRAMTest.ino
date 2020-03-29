#include <SPI.h>


// SRAM instructions
#define RDSR  0x05  //Change name
#define WRSR  0x01
#define READ  0x03
#define WRITE 0x02

// SRAM Hold disable bit.
//#define HOLD_DISABLE 1   // NOt for 24LC1024

// SRAM byte mode
//#define BYTE_MODE (0x00 | HOLD_DISABLE)
#define BYTE_MODE (0x00)

//SPI
const int F_SPICLK = 1500000;  // 1.5MHz, should be enough for 128Kbps MP3
SPIClass* spi = NULL;
SPISettings spiSettings(F_SPICLK, MSBFIRST, SPI_MODE0);


// Pins
const int RAM_CS = 22; // Chip select pin for RAM = 22
const int XDCS = 10;
const int XCS = 12;


const int maxNumberTestPasses = 3;

int mode;
int operationMode;

uint32_t addr=0;

int failures = 0;
int testPasses = 1;

void setup() {
  //while(!Serial);
  Serial.begin(115200);

  pinMode(RAM_CS, OUTPUT);

  // Make sure other chip selects are high
  pinMode(XDCS, OUTPUT);
  pinMode(XCS, OUTPUT);
 
   // Pulling the following high causes incorrect reads, don't know why  --->  FIXME
  digitalWrite(XDCS, HIGH); //!!!!!!!!
  digitalWrite(XCS, HIGH);

  spi = new SPIClass(VSPI);

  delay(10);


  // do this first, for Reasons  !!!!!!!!
  spi->begin();

    // Set mode
  setMode(BYTE_MODE);

 Serial.println("SPI RAM Test");
}


void loop() {
  long randomNumber;
  //spi->beginTransaction(spiSettings);  

  delayMicroseconds(50);
  //unsigned int address = B00001111;
  unsigned char  testVal = B1010100;

  if (addr==0) {
    Serial.println();
    Serial.print("Start test pass ");
    Serial.println(testPasses);
  }

  //randomNumber = random(255);
  // Use the last byte
  //testVal = randomNumber & 0xFF;
 
  writeByte(addr, testVal);
 
  delayMicroseconds(10);

  unsigned char val = 0;
  val = readByte(addr);

  if (val != testVal) {

    //delay(3);
    Serial.print("FAIL at addr\t");
    Serial.print(addr, 10);
    Serial.print("\t");
    Serial.print(addr, BIN);
    Serial.print("\t");
    Serial.print(testVal, BIN);
    Serial.print(":");
    Serial.print(val, BIN);
    Serial.print(" (wrote:read) ");
    //Serial.print(testOK?"":  "  Incorrect test was previously detected.");
    Serial.println();
    failures++;
  }

  addr++;
  //if (addr >= 256*1024) addr = 0;
  if (addr >= 32768) {
    addr = 0;
    Serial.println();
    Serial.print("Test pass #");
    Serial.print(testPasses);
    Serial.print(" completed with ");
    Serial.print(failures);
    Serial.println(" failures");
    Serial.println();
    failures = 0;
    testPasses++;

  }

  if (testPasses > maxNumberTestPasses) {
    Serial.println();
    Serial.println("All tests finished!");
    Serial.println();
    exit(0);
  }


    //mySPI.transfer(i++);
  //spi.transfer(B01010101);

  //spi->endTransaction();
}

void initMem() {
  for (unsigned int i = 0; i< 256; i++) {
    writeByte(i, 0);
  }
  Serial.println("Finished init");
}

void setMode(char mode)
{

    spi->beginTransaction(spiSettings);
    chipSelect(true);
    spi->transfer(WRSR);
    spi->transfer(mode);
    chipSelect(false);
    spi->endTransaction();
    operationMode = mode;

}

void chipSelect(bool state)
 {
  if (state) {
    digitalWrite(RAM_CS, LOW);
   } else {
    digitalWrite(RAM_CS, HIGH);
   }
 }

void writeByte(unsigned int address, char data)
{

  // Set byte mode
  //setMode(BYTE_MODE);

  // Write address, read data
  spi->beginTransaction(spiSettings); // !!!! before chip select
  chipSelect(true);
  spi->transfer(WRITE);
  spi->transfer((unsigned char)(address >> 16));
  spi->transfer((unsigned char)(address >> 8));
  spi->transfer((unsigned char)address);

  spi->transfer(data);
  chipSelect(false);

  spi->endTransaction();  // !!!!! after chip select

}

unsigned char readByte(unsigned int address)

{
  //unsigned char res;
  unsigned char res;

  // Set byte mode
  //setMode(BYTE_MODE);

  // Write address, read data
  spi->beginTransaction(spiSettings);

  chipSelect(true);

  spi->transfer(READ);
  spi->transfer((unsigned char)(address >> 16));
  spi->transfer((unsigned char)(address >> 8));
  spi->transfer((unsigned char)address);

  res = spi->transfer(0xFF);
  chipSelect(false);

  spi->endTransaction();


  return res;
}
