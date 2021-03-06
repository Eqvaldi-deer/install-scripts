#!/bin/sh
apt-get update -y
apt-get install hplip -y
apt-get install hplip-gui -y
apt-get install foomatic-db-compressed-ppds -y
apt-get install openprinting-ppds -y
apt-get install policykit-desktop-privileges -y
apt-get install printer-driver-foo2zjs -y
apt-get install printer-driver-gutenprint -y
apt-get install printer-driver-pnm2ppa -y
apt-get install printer-driver-ptouch -y
apt-get install printer-driver-pxljr -y
apt-get install printer-driver-sag-gdi -y
apt-get install printer-driver-splix -y
apt-get install cups-filters -y
apt-get update -y
apt clean
