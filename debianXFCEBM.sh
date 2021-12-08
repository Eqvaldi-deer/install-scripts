#!/bin/sh
apt update
apt install dialog -y

dialog --msgbox "DO NOT RUN THESE SCRIPTS ON UBUNTU BASED DISTROS" 0 0

apt install xfce4 xfce4-terminal -y
apt install file-roller -y
apt install galculator -y
apt install libmtp-runtime -y
apt install light-locker -y
apt install neofetch -y
apt install lightdm-gtk-greeter-settings -y
apt install xorg -y
apt install lightdm -y
apt install htop -y
apt install usb-modeswitch -y
apt install genisoimage -y
apt install inputattach -y
apt install xfce4-notifyd -y
apt install xfce4-power-manager -y
apt install xfce4-whiskermenu-plugin -y
apt install xfce4-power-manager-plugins -y
apt install gparted -y
apt install xarchiver -y
apt install p7zip -y
apt install zip unzip -y
apt install uuid-runtime -y
apt install thunar-archive-plugin -y
apt install libgtk-3-dev libgtk3-perl -y
apt install ffmpeg -y
apt install libavcodec58 -y
apt install exfalso -y
apt install font-manager -y
apt install libjpeg-dev -y
apt install gnome-screenshot -y
apt install catfish -y
apt install thunar-archive-plugin -y
apt update -y
apt upgrade -y
apt update -y
apt clean
