#! /bin/bash

clear

echo ++++++++++++++++++++++++

echo

echo   MUST BE RUN AS ROOT

echo

echo ++++++++++++++++++++++++

sleep 1

echo Checking requirements...

pacman -S macchanger nmap net-tools

sudo pacman -S macchanger nmap net-tools

sudo apt install macchanger nmap net-tools

apt install macchanger nmap net-tools

clear

read -p "Enter wireless interface: " interface

clear

read -p "Enter IP range to scan: " range

echo

clear

echo Scanning...

sleep 2

nmap -sP $range

echo

read -p "Enter target MAC address: " target

clear

echo Spoofing MAC...

sleep 2

echo 

sudo ifconfig $interface down

sudo macchanger -m $target $interface

sudo ifconfig $interface up

echo 

echo Done! Now you can access the internet.
