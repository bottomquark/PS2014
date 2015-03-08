#!/bin/bash

# TODO: create Makefile
rm SoftPWM.elf
rm SoftPWM.hex
avr-gcc -mmcu=atmega328p -Os -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums -Wall -Wstrict-prototypes -std=gnu99 -g SoftPWM.c -o SoftPWM.elf
avr-objcopy -O ihex -R .eeprom SoftPWM.elf SoftPWM.hex
avrdude -C/etc/avrdude.conf -v -v -v -v -patmega328p -carduino -P/dev/ttyACM0 -b115200 -D -Uflash:w:SoftPWM.hex:i
