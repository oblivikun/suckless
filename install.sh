#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "The script has to be run as root."
  exit
fi

cd dwmo
echo "Installing dwm"
rm -rf config.h
make clean install
cd ..

cd dmenuo
echo "Installing dmenu"
rm -rf config.h
make clean install
cd ..

cd slstatuso
echo "Installing slstatus"
rm -rf config.h
make clean install
cd ..

cd sto
echo "Installing st"
rm -rf config.h
make clean install
cd ..

cd slocko
echo "Installing slock"
rm -rf config.h
make clean install
cd ..

echo "Install finished. You should reboot the machine now."
