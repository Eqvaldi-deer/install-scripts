#!/bin/sh
echo ============================================================================
echo                                                                               
echo                                                                               
echo                    Copyright © Eqvaldi-deer/Eqvaldi-records                   
echo                                                                               
echo                                                                               
echo                                   2017-2022                                   
echo                                                                               
echo                               special thanks to:                              
echo                                                                             
echo                          BeanGreen247/Tomáš Mozdřeň                         
echo                                                                             
echo                    Github: https://github.com/BeanGreen247                  
echo                                                                                                                                                          
echo ============================================================================

apt update
apt install dialog -y

dialog --msgbox "DO NOT RUN THESE SCRIPTS ON UBUNTU BASED DISTROS" 0 0

dialog --sleep 2 --msgbox "known bugs
Mate/lxde desktop (nvidia-driver causes everything to be oversized)
Gbm3 (will not run on low end hardware for example raspi4/400)" 0 0

cmd=(dialog --keep-tite --menu "Select Desktop Environment:" 22 76 16)

options=(1 "Cinnamon"
         2 "XFCE"
         3 "XFCE BM"
         4 "LXDE"
         5 "Gnome"
         6 "MATE"
         7 "Budgie"
         8 "FVWM"
         9 "Skip to Firmware install")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            apt install cinnamon cinnamon-control-center cinnamon-screensaver cinnamon-session cinnamon-settings-daemon dconf-gsettings-backend f3 desktop-base pulseaudio pulseaudio-module-bluetooth pavucontrol gnome-terminal muffin nemo xserver-xorg file-roller network-manager-gnome gnome-calculator ghostscript-x libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings eog xorg lightdm synaptic gdebi htop gnome-icon-theme nemo usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse gedit inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-extra gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso flac font-manager libjpeg-dev libglx-mesa0 libgl1-mesa-dri gnome-screenshot -y
            apt install build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev -y
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
        2)
            apt install xfce4 xfce4-terminal file-roller network-manager-gnome galculator ghostscript-x libmtp-runtime light-locker vlc neofetch f3 lightdm-gtk-greeter-settings ristretto xorg lightdm synaptic gdebi htop pulseaudio pulseaudio-module-bluetooth gnome-icon-theme usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse mousepad inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk xfce4-notifyd xfce4-power-manager xfce4-whiskermenu-plugin xfce4-power-manager-plugins pavucontrol tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime thunar-archive-plugin mesa-utils-extra gvfs-backends gvfs-common soundconverter build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso flac font-manager libjpeg-dev xfce4-screenshooter catfish libglx-mesa0 libgl1-mesa-dri thunar-archive-plugin -y
            apt install build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev -y
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
        3)
            apt install xfce4 xfce4-terminal file-roller galculator libmtp-runtime light-locker neofetch lightdm-gtk-greeter-settings f3 xorg lightdm htop usb-modeswitch genisoimage inputattach xfce4-notifyd xfce4-power-manager xfce4-whiskermenu-plugin xfce4-power-manager-plugins gparted xarchiver p7zip zip unzip uuid-runtime thunar-archive-plugin libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso font-manager libjpeg-dev xfce4-screenshooter catfish libglx-mesa0 libgl1-mesa-dri thunar-archive-plugin -y
            apt install build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev -y
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
        4)
            apt install openbox lxsession lxde-common lxappearance lxappearance-obconf openbox-lxde-session lxpanel xfce4-notifyd xfce4-power-manager f3 xfce4-power-manager-plugins ristretto pavucontrol tumbler mesa-utils gparted xarchiver usb-modeswitch p7zip zip unzip uuid-runtime mesa-utils-extra gvfs-backends gvfs-common inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk pcmanfm lxterminal mousepad file-roller galculator ghostscript-x libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings xorg lightdm synaptic gdebi htop pulseaudio gnome-disk-utility gnome-icon-theme soundconverter network-manager-gnome ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso flac font-manager libjpeg-dev libglx-mesa0 libgl1-mesa-dri xfce4-screenshooter -y
            apt install build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev -y
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
            apt install adwaita-icon-theme at-spi2-core baobab caribou dconf-cli dconf-gsettings-backend eog evolution-data-server f3 fonts-cantarell gdm3 gedit gkbd-capplet glib-networking gnome-bluetooth gnome-calculator gnome-characters gnome-control-center gnome-logs gnome-menus gnome-session gnome-settings-daemon gnome-shell gnome-shell-extensions gnome-system-monitor gnome-terminal gnome-themes-extra gnome-user-share gsettings-desktop-schemas gstreamer1.0-packagekit gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-pulseaudio gvfs-backends gvfs-fuse libatk-adaptor libcanberra-pulse libglib2.0-bin libproxy1-plugin-gsettings libproxy1-plugin-webkit librsvg2-common pulseaudio pulseaudio-module-bluetooth sound-theme-freedesktop system-config-printer-common system-config-printer-udev tracker zenity file-roller network-manager-gnome gnome-calculator ghostscript-x libmtp-runtime vlc neofetch xorg synaptic gdebi htop gnome-icon-theme nemo usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse gedit inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-extra gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso flac font-manager libjpeg-dev libglx-mesa0 libgl1-mesa-dri gnome-screenshot -y
            apt install build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev -y
            apt purge disk-manager qlipper snapd -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            bash ./configurerepos.sh
            ;;
        6)
            apt install caja dconf-gsettings-backend fonts-cantarell gvfs-backends marco mate-control-center mate-desktop f3 mate-icon-theme mate-menus mate-notification-daemon mate-panel mate-polkit mate-session-manager mate-settings-daemon mate-terminal mate-themes file-roller network-manager-gnome galculator ghostscript-x libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings eom xorg lightdm synaptic gdebi htop pulseaudio pulseaudio-module-bluetooth gnome-icon-theme usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse pluma inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk xfce4-notifyd mate-power-manager pavucontrol tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-extra gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso flac libjpeg-dev libglx-mesa0 libgl1-mesa-dri xfce4-screenshooter -y
            apt install build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev -y
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
        7)
            apt install dconf-gsettings-backend gnome-screensaver gnome-session-bin gnome-session-common gnome-settings-daemon libasound2 libbudgie-plugin0 libbudgie-private0 libbudgietheme0 libc6 libcairo2 libgdk-pixbuf-2.0-0 libgirepository-1.0-1 libgles2 libglib2.0-0 libgnome-bluetooth13 libgnome-desktop-3-19 libgnome-menu-3-0 libgtk-3-0 libibus-1.0-5 libmutter-7-0 libnotify4 libpeas-1.0-0 libpolkit-agent-1-0 libpolkit-gobject-1-0 libpulse-mainloop-glib0 libpulse0 libraven0 libupower-glib3 libuuid1 libwnck-3-0 libx11-6 libxcomposite1 gir1.2-budgie-1.0 gnome-control-center gnome-menus network-manager-gnome budgie-desktop-view gnome-terminal nautilus file-roller xserver-xorg pulseaudio pulseaudio-module-bluetooth pavucontrol gnome-calculator ghostscript-x libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings eog xorg lightdm synaptic gdebi htop gnome-icon-theme nemo usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse gedit inputattach xserver-xorg-input-all xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-extra gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso flac font-manager libjpeg-dev gnome-screenshot -y
            apt install build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev -y
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
        8)
            apt install fvwm thunar pulseaudio pasystray light-locker lightdm-gtk-greeter-settings lightdm file-roller f3 network-manager-gnome galculator ghostscript-x libmtp-runtime vlc neofetch ristretto xorg synaptic gdebi htop gnome-icon-theme usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse mousepad inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-extra gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec58 exfalso flac font-manager libjpeg-dev xfce4-screenshooter catfish libglx-mesa0 libgl1-mesa-dri thunar-archive-plugin -y
            apt install build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev -y
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
        9)
            bash ./configurerepos.sh
            ;;

    esac
done
