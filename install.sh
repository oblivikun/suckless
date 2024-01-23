#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "The script has to be run as root."
  exit
fi

mkdir /home/bt/.suckless
cd /home/bt/.suckless

git clone https://git.sr.ht/~bt/dwmo
cd dwmo
echo "Installing dwm"
rm -rf config.h
make clean install
cd ..

git clone https://git.sr.ht/~bt/dmenuo
cd dmenuo
echo "Installing dmenu"
rm -rf config.h
make clean install
cd ..

git clone https://git.sr.ht/~bt/slstatuso
cd slstatuso
echo "Installing slstatus"
rm -rf config.h
make clean install
cd ..

git clone https://git.sr.ht/~bt/sto
cd sto
echo "Installing st"
rm -rf config.h
make clean install
cd ..

git clone https://git.sr.ht/~bt/slocko
cd slocko
echo "Installing slock"
rm -rf config.h
make clean install
cd ..
cd ..

rcctl enable apmd
rcctl start apmd

echo "Install finished. You should reboot the machine now."
