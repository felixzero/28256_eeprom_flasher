#define SERIAL_BAUD_RATE 115200

#define PAGE_SIZE 64

#define READ_PAGE_CMD 'r'
#define WRITE_PAGE_CMD 'w'

#define PROCESSED '0'
#define ERROR_INVALID_COMMAND '1'
#define ERROR_BUFFER_TIMEOUT '2'
#define ERROR_ADDR_NOT_AT_BEGINNING_OF_PAGE '3'

#include "eeprom.h"

void setup() {
  Serial.begin(SERIAL_BAUD_RATE);
  Flasher.begin();
}

void loop() {
  if (!Serial.available()) {
    return;
  }

  uint8_t command_byte;
  Serial.readBytes(&command_byte, 1);

  switch(command_byte) {
  case READ_PAGE_CMD:
    handle_read();
    break;

  case WRITE_PAGE_CMD:
    handle_write();
    break;

  default:
    handle_error(ERROR_INVALID_COMMAND);
  }
}

void handle_read() {
  static uint8_t read_buffer[2];
  static uint8_t output_buffer[PAGE_SIZE];
  
  if (Serial.readBytes(read_buffer, 2) != 2) {
    handle_error(ERROR_BUFFER_TIMEOUT);
    return;
  }

  uint16_t eeprom_addr = read_buffer[0] + read_buffer[1] * 256;
  if (eeprom_addr % PAGE_SIZE != 0) {
    handle_error(ERROR_ADDR_NOT_AT_BEGINNING_OF_PAGE);
    return;
  }

  Flasher.read_page(eeprom_addr, output_buffer);
  Serial.write(PROCESSED);
  Serial.write(output_buffer, PAGE_SIZE);
}

void handle_write() {
  static uint8_t read_buffer[PAGE_SIZE + 2];
  
  if (Serial.readBytes(read_buffer, PAGE_SIZE + 2) != (PAGE_SIZE + 2)) {
    handle_error(ERROR_BUFFER_TIMEOUT);
    return;
  }

  uint16_t eeprom_addr = read_buffer[0] + read_buffer[1] * 256;
  if (eeprom_addr % PAGE_SIZE != 0) {
    handle_error(ERROR_ADDR_NOT_AT_BEGINNING_OF_PAGE);
    return;
  }

  Flasher.write_page(eeprom_addr, read_buffer + 2);
  Serial.write(PROCESSED);
}

void handle_error(char error_code) {
  Serial.write(error_code);
}
