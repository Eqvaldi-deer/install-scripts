#!/bin/sh
apt-get update
apt-get install lxde-core -y
apt-get install xfce4-notifyd -y
apt-get install xfce4-power-manager -y
apt-get install xfce4-power-manager-plugins -y
apt-get install pavucontrol -y
apt-get install tumbler -y
apt-get install mesa-utils -y
apt-get install gparted -y
apt-get install putty -y
apt-get install gimp -y
apt-get install xarchiver -y
apt-get install p7zip -y
apt-get install zip unzip -y
apt-get install mesa-utils-extra -y
apt-get install gvfs-backends -y
apt-get install gvfs-common -y
apt-get install inputattach -y
apt-get install language-selector-gnome -y
apt-get install xserver-xorg-input-all -y
apt-get install xserver-xorg-video-all -y
apt-get install xserver-xorg-video-qxl -y
apt-get install openprinting-ppds -y
apt-get install policykit-desktop-privileges -y
apt-get install printer-driver-foo2zjs -y
apt-get install printer-driver-gutenprint -y
apt-get install printer-driver-pnm2ppa -y
apt-get install printer-driver-ptouch -y
apt-get install printer-driver-pxljr -y
apt-get install printer-driver-sag-gdi -y
apt-get install printer-driver-splix -y
apt-get install software-properties-gtk -y
apt-get install system-config-printer -y
apt-get install transmission-gtk -y
apt-get install pcmanfm -y
apt-get install lxterminal -y
apt-get install leafpad -y
apt-get install file-roller -y
apt-get install galculator -y
apt-get install ghostscript-x -y
apt-get install hplip -y
apt-get install hplip-gui -y
apt-get install foomatic-db-compressed-ppds -y
apt-get install libmtp-runtime -y
apt-get install light-locker -y
apt-get install vlc -y
apt-get install neofetch -y
apt-get install lightdm-gtk-greeter-settings -y
apt-get install xorg -y
apt-get install chromium -y
apt-get install dosbox -y
apt-get install lightdm -y
apt-get install gdebi -y
apt-get install synaptic -y
apt-get install htop -y
apt-get install pulseaudio -y
apt-get install gnome-disk-utility -y
apt-get install gnome-icon-theme -y
apt-get install soundconverter -y
apt-get install handbrake -y
apt-get install network-manager-gnome -y
apt-get install prboom-plus -y
apt-get install freedoom -y
apt-get install ffmpeg -y
apt-get install audacious -y
apt-get install build-essential -y
apt-get install libcurl4-openssl-dev -y
apt-get install libalut-dev -y
apt-get install libsdl2-dev -y
apt-get install libsdl2-mixer-dev -y
apt-get install mixxx -y
apt-get install audacity -y
apt-get update -y
apt-get upgrade -y
rm /etc/apt/sources.list.d/vscode.list
rm /etc/apt/trusted.gpg.d/microsoft.gpg
apt purge snapd -y
echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
cat /etc/apt/preferences.d/nosnap.pref
apt-get update -y
apt clean
