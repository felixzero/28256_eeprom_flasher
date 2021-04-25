#include <Arduino.h>

class EEPROMFlash {
public:
  void begin();
  void read_page(uint16_t addr, uint8_t *buffer);
  void write_page(uint16_t addr, const uint8_t *buffer);
private:
  void read_mode();
  void write_mode();
  void write_byte(uint16_t addr, uint8_t data);
  uint8_t read_byte(uint16_t addr);
  void set_address(uint16_t addr);
};

extern EEPROMFlash Flasher;
