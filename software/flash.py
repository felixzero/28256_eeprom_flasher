#!/usr/bin/python3

import sys
import argparse
import serial
import struct
import time
import hashlib
import os

SERIAL_BAUD_RATE = 115200
SERIAL_TIMEOUT = 2.0
PAGE_SIZE = 64

class SerialHandler:
    def __init__(self, block_device):
        self.serial = serial.Serial(block_device, SERIAL_BAUD_RATE, timeout=SERIAL_TIMEOUT, exclusive=True)
        
        # Reset the Arduino
        # This is needed because the Arduino resets itself on first serial transfer
        self.serial.write('\x00'.encode('ascii'))
        self.serial.read()
    
    def read_page(self, address):
        return self._send_command(struct.pack('<cH', 'r'.encode('ascii'), address), PAGE_SIZE)
        
    def write_page(self, address, data):
        if len(data) != PAGE_SIZE:
            raise ValueError("Page data should have a length of {}".format(PAGE_SIZE))
        self._send_command(struct.pack('<cH{}s'.format(PAGE_SIZE), 'w'.encode('ascii'), address, data), 0)
    
    def _send_command(self, command, response_size):
        self.serial.write(command)
        response = self.serial.read(1 + response_size)
        if response[0] != ord('0'):
            raise Exception('Flasher responded with code {}'.format(response[0]))
        return response[1:]


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Flash a 32K file to an EEPROM')
    parser.add_argument('-i', '--input', required=True)
    parser.add_argument('-o', '--output', required=True)
    namespace = vars(parser.parse_args(sys.argv[1:]))

    input_file = namespace['input']
    output_file = namespace['output']

    if os.path.getsize(input_file) != 32*1024:
        print("Input size must be exactly 32K long")
        exit(1)
    
    handler = SerialHandler(output_file)
    with open(input_file, 'rb') as f:
        file_content = f.read()
        file_digest = hashlib.md5(file_content)
        
        print('Input file digest is {}'.format(file_digest.hexdigest()))
        
        print('Start flashing...')
        for addr in range(0x0000, 0x8000, PAGE_SIZE):
            handler.write_page(addr, file_content[addr:addr+PAGE_SIZE])
            if addr % 0x1000 == 0:
                print('Finished page {:X}'.format(addr))
        
        print('Flashing done; checking EEPROM digest...')
        mem_digest = hashlib.md5()
        for addr in range(0x0000, 0x8000, PAGE_SIZE):
            mem_digest.update(handler.read_page(addr))
        print('EEPROM digest is {}'.format(mem_digest.hexdigest()))


