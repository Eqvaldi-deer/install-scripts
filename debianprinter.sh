#!/bin/sh
apt update -y
apt install hplip -y
apt install hplip-gui -y
apt install foomatic-db-compressed-ppds -y
apt install openprinting-ppds -y
apt install policykit-desktop-privileges -y
apt install printer-driver-foo2zjs -y
apt install printer-driver-gutenprint -y
apt install printer-driver-pnm2ppa -y
apt install printer-driver-ptouch -y
apt install printer-driver-pxljr -y
apt install printer-driver-sag-gdi -y
apt install printer-driver-splix -y
apt install cups-filters -y
apt update -y
apt clean
