#!/bin/sh
rm /etc/apt/sources.list
echo 'deb http://deb.debian.org/debian/ unstable main contrib non-free' >> /etc/apt/sources.list
echo 'deb-src http://deb.debian.org/debian/ unstable main contrib non-free' >> /etc/apt/sources.list
cat /etc/apt/sources.list
