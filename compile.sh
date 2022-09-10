#!/bin/bash
set -e
source /root/esp/esp-idf/export.sh
idf.py build -C program
./flash.sh program/build/emulation.bin
