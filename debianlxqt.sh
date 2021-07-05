#!/bin/sh
apt update
apt install lxqt-core -y
apt install tumbler -y
apt install usb-modeswitch -y
apt install mesa-utils -y
apt install gparted -y
apt install xarchiver -y
apt install p7zip -y
apt install zip unzip -y
apt install mesa-utils-extra -y
apt install gvfs-backends -y
apt install gvfs-common -y
apt install inputattach -y
apt install language-selector-gnome -y
apt install xserver-xorg-input-all -y
apt install xserver-xorg-video-all -y
apt install xserver-xorg-video-qxl -y
apt install software-properties-gtk -y
apt install system-config-printer -y
apt install transmission-qt -y
apt install pcmanfm-qt -y
apt install qterminal -y
apt install featherpad -y
apt install file-roller -y
apt install galculator -y
apt install ghostscript-x -y
apt install libmtp-runtime -y
apt install light-locker -y
apt install vlc -y
apt install neofetch -y
apt install lightdm-gtk-greeter-settings -y
apt install xorg -y
apt install chromium -y
apt install lightdm -y
apt install synaptic -y
apt install gdebi -y
apt install htop -y
apt install pulseaudio -y
apt install gnome-disk-utility -y
apt install gnome-icon-theme -y
apt install soundconverter -y
apt install network-manager-gnome -y
apt install ffmpeg -y
apt install build-essential -y
apt install libcurl4-openssl-dev -y
apt install libalut-dev -y
apt install libsdl2-dev -y
apt install libsdl2-mixer-dev -y
apt install libgtk-3-dev libgtk3-perl -y
apt purge disk-manager -y 
apt purge qlipper -y
apt update -y
apt upgrade -y
rm /etc/apt/sources.list.d/vscode.list
rm /etc/apt/trusted.gpg.d/microsoft.gpg
apt purge snapd -y
echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
cat /etc/apt/preferences.d/nosnap.pref
apt update -y
apt clean
