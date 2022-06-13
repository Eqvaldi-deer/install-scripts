#!/bin/sh
apt update
apt install dialog -y

dialog --msgbox "DO NOT RUN THESE SCRIPTS ON UBUNTU BASED DISTROS" 0 0

dialog --sleep 2 --msgbox "known bugs
Mate/lxde desktop (nvidia-driver causes everything to be oversized)
Gbm3 (will not run on low end hardware for example raspi4/400)" 0 0

cmd=(dialog --keep-tite --menu "Select Desktop Environment:" 22 76 16)

options=( 1 "XFCE"
          2 "LXDE"
          3 "Mate"
          4 "Cinnamon (beta)"
          5 "Skip to Firmware install")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            apt install xfce4 xfce4-terminal f3 file-roller network-manager-gnome galculator ghostscript-x libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings ristretto xorg lightdm synaptic gdebi htop pulseaudio pulseaudio-module-bluetooth gnome-icon-theme usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse mousepad inputattach xserver-xorg-input-all xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk xfce4-notifyd xfce4-power-manager xfce4-whiskermenu-plugin xfce4-power-manager-plugins pavucontrol tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime thunar-archive-plugin mesa-utils-extra gvfs-backends gvfs-common soundconverter build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso flac font-manager libjpeg-dev xfce4-screenshooter catfish libglx-mesa0 libgl1-mesa-dri thunar-archive-plugin -y
            #apt install libmali-xu4-x11-gbm-fbdev -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            bash ./configurereposARM.sh
            ;;
        2)
            apt install openbox lxsession lxde-common lxappearance openbox-lxde-session lxpanel f3 xfce4-notifyd xfce4-power-manager xfce4-power-manager-plugins ristretto pavucontrol tumbler mesa-utils gparted xarchiver usb-modeswitch p7zip zip unzip uuid-runtime mesa-utils-extra gvfs-backends gvfs-common inputattach xserver-xorg-input-all xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk pcmanfm lxterminal mousepad file-roller galculator ghostscript-x libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings xorg lightdm synaptic gdebi htop pulseaudio gnome-disk-utility gnome-icon-theme soundconverter network-manager-gnome ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso flac font-manager libjpeg-dev libglx-mesa0 libgl1-mesa-dri xfce4-screenshooter -y
            #apt install libmali-xu4-x11-gbm-fbdev
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            bash ./configurereposARM.sh
            ;;
        3)
            apt install caja dconf-gsettings-backend fonts-cantarell gvfs-backends marco mate-control-center mate-desktop mate-icon-theme mate-menus f3 mate-notification-daemon mate-panel mate-polkit mate-session-manager mate-settings-daemon mate-terminal mate-themes file-roller network-manager-gnome galculator ghostscript-x libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings eom xorg lightdm synaptic gdebi htop pulseaudio pulseaudio-module-bluetooth gnome-icon-theme usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse pluma inputattach xserver-xorg-input-all xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk xfce4-notifyd xfce4-power-manager xfce4-power-manager-plugins pavucontrol tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-extra gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso flac font-manager libjpeg-dev libglx-mesa0 libgl1-mesa-dri xfce4-screenshooter -y
            #apt install libmali-xu4-x11-gbm-fbdev
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            bash ./configurereposARM.sh
            ;;
        4)
            apt install cinnamon cinnamon-control-center cinnamon-screensaver cinnamon-session cinnamon-settings-daemon dconf-gsettings-backend f3 desktop-base pulseaudio pulseaudio-module-bluetooth pavucontrol gnome-terminal muffin nemo xserver-xorg file-roller network-manager-gnome gnome-calculator ghostscript-x libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings eog xorg lightdm synaptic gdebi htop gnome-icon-theme nemo usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse gedit inputattach xserver-xorg-input-all xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-extra gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso flac font-manager libjpeg-dev libglx-mesa0 libgl1-mesa-dri gnome-screenshot -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            bash ./configurerepos.sh
            ;;            
        5)
            bash ./configurereposARM.sh
            ;;

    esac
done
