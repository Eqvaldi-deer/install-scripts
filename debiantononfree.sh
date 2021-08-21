#!/bin/sh
rm /etc/apt/sources.list
echo 'deb http://deb.debian.org/debian bullseye main contrib non-free' >> /etc/apt/sources.list
echo 'deb-src http://deb.debian.org/debian bullseye main contrib non-free' >> /etc/apt/sources.list
echo 'deb http://deb.debian.org/debian bullseye-updates main contrib non-free' >> /etc/apt/sources.list
echo 'deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free' >> /etc/apt/sources.list
echo 'deb http://security.debian.org/debian-security/ bullseye-security main contrib non-free' >> /etc/apt/sources.list
echo 'deb-src http://security.debian.org/debian-security/ bullseye-security main contrib non-free' >> /etc/apt/sources.list
cat /etc/apt/sources.list
apt update -y
