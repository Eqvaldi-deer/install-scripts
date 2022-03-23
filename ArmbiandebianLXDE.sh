#!/bin/sh
apt update
apt install dialog -y

dialog --msgbox "DO NOT RUN THESE SCRIPTS ON UBUNTU BASED DISTROS" 0 0

apt install openbox -y
apt install lxsession -y
apt install lxde-common -y
apt install xfce4-notifyd -y
apt install xfce4-power-manager -y
apt install xfce4-power-manager-plugins -y
apt install pavucontrol -y
apt install tumbler -y
apt install mesa-utils -y
apt install gparted -y
apt install xarchiver -y
apt install usb-modeswitch -y
apt install p7zip -y
apt install zip unzip -y
apt install uuid-runtime -y
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
apt install transmission-gtk -y
apt install pcmanfm -y
apt install lxterminal -y
apt install mousepad -y
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
apt install ffmpeg -y
apt install libavcodec58 -y
apt install exfalso -y
apt install flac -y
apt install font-manager -y
apt install libjpeg-dev -y
apt install gnome-screenshot -y
#apt install libmali-xu4-x11-gbm-fbdev
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
