/*
 *
 *
 * Author: Andrew Doble
 * Creation date: 07.08.2016
 */

#include "SPIRingBuffer.h"

/**
 * Class constructor
 *
 * param chipSelectPin The digital pin used a SPI slave select
 */
SPIRingBuffer::SPIRingBuffer(uint8_t chipSelectPin)
{
  csPin = chipSelectPin;

  spiRAM = new ESP8266Spiram(chipSelectPin, RAMCLK);



}


/**
 *  Initialize the SPI communication
 *
 */
 void SPIRingBuffer::begin(void)
 {
   pinMode(csPin, OUTPUT);
   chipSelect(false);

   // Initialise vspi with default pins
   //SCLK = 18, MISO = 19, MOSI = 23, SS = 5
   SPI.begin();

   // Start the SPI RAM in byte mode (default)
   spiRAM->begin();

   // Reset the indexes
   reset();
 }

 /**
  *  Initialize the indexes.
  *  Existing data will be overwritten started at address 0.
  */
void SPIRingBuffer::reset(void)
{
  head = -1;
  tail = -1 ;
}

/**
 * Puts a byte into the streaming buffer in the SPI RAM.
 * Returns -1 if the buffer is full. Else returns
 * the added data.
 */
int32_t SPIRingBuffer::put(uint8_t data)
{

  // Advance the head address.
  // Also handles the initial condition when head is -1,
  // i.e. head is always positive when the modulo operator is appplied.
  head = (head + 1) % RING_BUFFER_LENGTH;

  // Check for buffer overload, i.e. the head will overtake the tail
  if (head == tail) return -1;

  // Add the data
  writeByte(head, data);


  // If no data has been written as yet (i.e. tail is -1) then
  // update the tail, otherwise leave it as it  was.
  if (tail == -1) tail = 0;

  return data;
}

/**
 * Gets a byte from the streaming buffer in SPI RAM.
 * If the buffer is empty, returns -1.
 */
 int32_t SPIRingBuffer::get(void)
{
  uint8_t data;  // DOBLE type was byte

  // Initial condition and no data loaded or all data has been read
  if (tail == -1) return -1;

  // Read the data
  data = readByte(tail);


  if (tail == head) {
    // All data has been read so reset
    head = -1;
    tail = -1;
  }
  else {
    // Advance the tail index
    tail = (tail + 1) % RING_BUFFER_LENGTH;
  }
  return data;

}

/**
 * Returns how much data is in the streaming buffer
 */
int32_t SPIRingBuffer::availableData(void)
{
  // Initial condition
  if (tail == -1 && head == -1) return 0;

  if (tail <= head) {
    return (head - tail + 1);
  }
  else {
    return (RING_BUFFER_LENGTH - (tail - head) + 1);
  }
}

/**
 * Returns how much space is available in the streaming buffer
 */
int32_t SPIRingBuffer::availableSpace(void)
{
  return (RING_BUFFER_LENGTH - availableData());
}

/**
 * Returns true if the buffer is full
 */
bool SPIRingBuffer::bufferFull()
{
  return ((RING_BUFFER_LENGTH - availableData()) == 0);
}


/**
 * Get the head index. This is mainly used for debugging purposes.
 * Note that the head index cannot be set.
 */
int32_t SPIRingBuffer::getHead(void)
{
  return head;
}

/**
 * Get the tail index. This is mainly used for debugging purposes.
 * Note that the tail index cannot be set.
 */
int32_t SPIRingBuffer::getTail(void)
{
  return tail;
}

/**
 * Read byte from SRAM
 *
 * @param address Memory address
 *
 * @return Byte read
 */
//unsigned char SPIRingBuffer::readByte(unsigned int address)
unsigned char SPIRingBuffer::readByte(uint32_t address)
{
  //unsigned char res;
  unsigned char res;

  spiRAM->read(address, &res, 1);

  return res;
}

/**
 * Write byte to SRAM
 *
 * @param address Memory address
 * @param data Data byte to be written
 */
void SPIRingBuffer::writeByte(uint32_t address, uint8_t data)
{
  spiRAM->write(address, &data, 1);
}
