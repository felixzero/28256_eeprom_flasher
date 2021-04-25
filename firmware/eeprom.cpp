#include "eeprom.h"

// Pin definition
#define CLK_PIN 13
#define DATA_PIN 11
#define WE_PIN 8
#define OE_PIN 9
#define STATUS_PIN 7

// Data pins are A0-A5 and D2-D3
// These bit masks allow for fast port read/write
#define PORTC_BITMASK 0b00111111
#define PORTD_BITMASK 0b00001100

#define EEPROM_SIZE 0x8000 // 32K
#define PAGE_SIZE 64

#include <SPI.h>

static EEPROMFlash Flasher;

void EEPROMFlash::begin() {
  SPI.begin();

  digitalWrite(WE_PIN, HIGH);
  digitalWrite(OE_PIN, HIGH);
  pinMode(WE_PIN, OUTPUT);
  pinMode(OE_PIN, OUTPUT);
  pinMode(STATUS_PIN, OUTPUT);

  read_mode();
}

void EEPROMFlash::read_page(uint16_t addr, uint8_t *buffer) {
  read_mode();
  
  for (int i = 0; i < PAGE_SIZE; ++i) {
    buffer[i] = read_byte(addr + i);
  }
}

void EEPROMFlash::write_page(uint16_t addr, const uint8_t *buffer) {
  write_mode();
  
  digitalWrite(STATUS_PIN, HIGH);

  for (int i = 0; i < PAGE_SIZE; ++i) {
    write_byte(addr++, buffer[i]);
  }
  
  // Wait 15ms to ensure page is set
  delay(15);

  digitalWrite(STATUS_PIN, LOW);
}

void EEPROMFlash::read_mode() {
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
  pinMode(A3, INPUT);
  pinMode(A4, INPUT);
  pinMode(A5, INPUT);
  pinMode(2, INPUT);
  pinMode(3, INPUT);

  digitalWrite(OE_PIN, LOW);
}

void EEPROMFlash::write_mode() {
  digitalWrite(OE_PIN, HIGH);

  pinMode(A0, OUTPUT);
  pinMode(A1, OUTPUT);
  pinMode(A2, OUTPUT);
  pinMode(A3, OUTPUT);
  pinMode(A4, OUTPUT);
  pinMode(A5, OUTPUT);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
}

void EEPROMFlash::write_byte(uint16_t addr, uint8_t data) {
  // Set address and data
  set_address(addr);
  PORTC = (data & PORTC_BITMASK) | (PORTC & (~PORTC_BITMASK));
  PORTD = ((data >> 4) & PORTD_BITMASK) | (PORTD & (~PORTD_BITMASK));

  // Pulse WE pin
  digitalWrite(WE_PIN, LOW);
  delayMicroseconds(1);
  digitalWrite(WE_PIN, HIGH);
}

uint8_t EEPROMFlash::read_byte(uint16_t addr) {
  uint8_t result;
    
  set_address(addr);
  result = PINC & PORTC_BITMASK;
  result |= ((PIND & PORTD_BITMASK) << 4);
  return result;
}

void EEPROMFlash::set_address(uint16_t addr) {
  SPI.beginTransaction(SPISettings(100000, MSBFIRST, SPI_MODE2));
  SPI.transfer16(addr);
  SPI.endTransaction();
  delayMicroseconds(10);
}
