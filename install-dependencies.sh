#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "The script has to be run as root."
  exit
fi

echo "This script is designed for OpenBSD and it will not work with in any other OS"
echo "Installing dependencies listed in dependencies.txt..."

sed -e 's/#.*$//' -e '/^$/d' dependencies.txt | while read p; do
    echo "Running pkg_add $p"
    pkg_add $p
done 
