#!/bin/sh
echo ============================================================================
echo                                                                               
echo                                                                               
echo                    Copyright © Eqvaldi-deer/Eqvaldi-records                   
echo                                                                               
echo                                                                               
echo                                   2017-2023                                   
echo                                                                               
echo                               special thanks to:                              
echo                                                                             
echo                          BeanGreen247/Tomáš Mozdřeň                         
echo                                                                             
echo                    Github: https://github.com/BeanGreen247                  
echo                                                                                                                                                          
echo ============================================================================

apt update
apt install dialog grep -y

dialog --msgbox "DO NOT RUN THESE SCRIPTS ON UBUNTU BASED DISTROS" 0 0


cmd=(dialog --keep-tite --menu "Select Desktop Environment:" 22 76 16)

options=(1 "Cinnamon"
         2 "XFCE"
         3 "XFCE BM"
         4 "LXDE"
         5 "MATE"
         6 "LXQT (WIP)"
         7 "FVWM-3"
	 8 "Skip to Firmware install")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            apt install cinnamon cinnamon-control-center cinnamon-screensaver cinnamon-session cinnamon-settings-daemon dconf-gsettings-backend f3 desktop-base pulseaudio pulseaudio-module-bluetooth pavucontrol gnome-terminal muffin nemo xserver-xorg file-roller network-manager-gnome gnome-calculator ghostscript libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings eog xorg lightdm synaptic gdebi htop gnome-icon-theme nemo usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse gedit inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-bin gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec60 exfalso flac font-manager libjpeg-dev libglx-mesa0 libgl1-mesa-dri gnome-screenshot -y
            apt install dbus-x11 build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev openssl miniupnpc libao-dev vainfo vdpauinfo glmark2-* -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            	cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

		options=(1 "Debian (server)"
 		         2 "Debian for Raspberry Pi (server)"
         		 3 "Raspberry Pi OS (server)"
			 4 "Armbian (Debian server)")

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
		    case $choice in
		        1)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
            
		            ;;
		        2)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
		            ;;

		        3)
		            bash ./firmware.sh
		            ;;
		        4)
		            bash ./firmware.sh
            		    ;;
            
    			    esac
			done
            ;;
        2)
            apt install xfce4 xfce4-terminal file-roller network-manager-gnome galculator ghostscript libmtp-runtime light-locker vlc neofetch f3 lightdm-gtk-greeter-settings ristretto xorg lightdm synaptic gdebi htop pulseaudio pulseaudio-module-bluetooth gnome-icon-theme usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse mousepad inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk xfce4-notifyd xfce4-power-manager xfce4-whiskermenu-plugin xfce4-power-manager-plugins pavucontrol tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime thunar-archive-plugin mesa-utils-bin gvfs-backends gvfs-common soundconverter build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec60 exfalso flac font-manager libjpeg-dev xfce4-screenshooter catfish libglx-mesa0 libgl1-mesa-dri thunar-archive-plugin -y
            apt install dbus-x11 build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev openssl miniupnpc libao-dev vainfo vdpauinfo glmark2-* -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            	cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

		options=(1 "Debian (server)"
 		         2 "Debian for Raspberry Pi (server)"
         		 3 "Raspberry Pi OS (server)"
			 4 "Armbian (Debian server)")

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
		    case $choice in
		        1)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
            
		            ;;
		        2)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
		            ;;

		        3)
		            bash ./firmware.sh
		            ;;
		        4)
		            bash ./firmware.sh
            		    ;;
            
    			    esac
			done
            ;;
        3)
            apt install xfce4 xfce4-terminal file-roller galculator libmtp-runtime light-locker neofetch lightdm-gtk-greeter-settings f3 xorg lightdm htop usb-modeswitch genisoimage inputattach xfce4-notifyd xfce4-power-manager xfce4-whiskermenu-plugin xfce4-power-manager-plugins gparted xarchiver p7zip zip unzip uuid-runtime thunar-archive-plugin libgtk-3-dev libgtk3-perl ffmpeg libavcodec60 exfalso font-manager libjpeg-dev xfce4-screenshooter catfish libglx-mesa0 libgl1-mesa-dri thunar-archive-plugin -y
            apt install dbus-x11 build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev openssl miniupnpc libao-dev vainfo vdpauinfo glmark2-* -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            	cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

		options=(1 "Debian (server)"
 		         2 "Debian for Raspberry Pi (server)"
         		 3 "Raspberry Pi OS (server)"
			 4 "Armbian (Debian server)")

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
		    case $choice in
		        1)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
            
		            ;;
		        2)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
		            ;;

		        3)
		            bash ./firmware.sh
		            ;;
		        4)
		            bash ./firmware.sh
            		    ;;
            
    			    esac
			done
            ;;
        4)
            apt install openbox lxsession lxde-common lxappearance lxappearance-obconf openbox-lxde-session lxpanel xfce4-notifyd xfce4-power-manager f3 xfce4-power-manager-plugins ristretto pavucontrol tumbler mesa-utils gparted xarchiver usb-modeswitch p7zip zip unzip uuid-runtime mesa-utils-bin gvfs-backends gvfs-common inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk pcmanfm lxterminal mousepad file-roller galculator ghostscript libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings xorg lightdm synaptic gdebi htop pulseaudio gnome-disk-utility gnome-icon-theme soundconverter network-manager-gnome ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec60 exfalso flac font-manager libjpeg-dev libglx-mesa0 libgl1-mesa-dri xfce4-screenshooter -y
            apt install dbus-x11 build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev openssl miniupnpc libao-dev vainfo vdpauinfo glmark2-* -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            	cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

		options=(1 "Debian (server)"
 		         2 "Debian for Raspberry Pi (server)"
         		 3 "Raspberry Pi OS (server)"
			 4 "Armbian (Debian server)")

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
		    case $choice in
		        1)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
            
		            ;;
		        2)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
		            ;;

		        3)
		            bash ./firmware.sh
		            ;;
		        4)
		            bash ./firmware.sh
            		    ;;
            
    			    esac
			done
            ;;
        5)
            apt install caja dconf-gsettings-backend fonts-cantarell gvfs-backends marco mate-control-center mate-desktop f3 mate-icon-theme mate-menus mate-notification-daemon mate-panel mate-polkit mate-session-manager mate-settings-daemon mate-terminal mate-themes file-roller network-manager-gnome galculator ghostscript libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings eom xorg lightdm synaptic gdebi htop pulseaudio pulseaudio-module-bluetooth gnome-icon-theme usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse pluma inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk xfce4-notifyd mate-power-manager pavucontrol tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-bin gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec60 exfalso flac libjpeg-dev libglx-mesa0 libgl1-mesa-dri xfce4-screenshooter -y
            apt install dbus-x11 build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev openssl miniupnpc libao-dev vainfo vdpauinfo glmark2-* -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            	cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

		options=(1 "Debian (server)"
 		         2 "Debian for Raspberry Pi (server)"
         		 3 "Raspberry Pi OS (server)"
			 4 "Armbian (Debian server)")

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
		    case $choice in
		        1)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
            
		            ;;
		        2)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
		            ;;

		        3)
		            bash ./firmware.sh
		            ;;
		        4)
		            bash ./firmware.sh
            		    ;;
            
    			    esac
			done
            ;;
        6)
            apt install desktop-file-utils lxqt-config lxqt-globalkeys lxqt-notificationd lxqt-panel lxqt-policykit lxqt-qtplugin lxqt-runner lxqt-session lxqt-system-theme lxqt-themes pcmanfm-qt featherpad lximage-qt qterminal openbox obconf-qt lxqt-powermanagement lxqt-qtplugin xorg xinit file-roller f3 pulseaudio pulseaudio-module-bluetooth pavucontrol-qt galculator ghostscript libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings lightdm synaptic gdebi htop gnome-icon-theme usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse inputattach xserver-xorg-input-all xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-qt tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-bin gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec60 exfalso flac font-manager libjpeg-dev -y
            apt install dbus-x11 build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev openssl miniupnpc libao-dev vainfo vdpauinfo glmark2-* -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            	cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

		options=(1 "Debian (server)"
 		         2 "Debian for Raspberry Pi (server)"
         		 3 "Raspberry Pi OS (server)"
			 4 "Armbian (Debian server)")

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
		    case $choice in
		        1)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
            
		            ;;
		        2)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
		            ;;

		        3)
		            bash ./firmware.sh
		            ;;
		        4)
		            bash ./firmware.sh
            		    ;;
            
    			    esac
			done
            ;;
        7)
            apt install fvwm3 xfce4-terminal thunar pulseaudio pasystray light-locker lightdm-gtk-greeter-settings lightdm file-roller f3 network-manager-gnome galculator ghostscript libmtp-runtime vlc neofetch ristretto xorg synaptic gdebi htop gnome-icon-theme usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse mousepad inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl xorg software-properties-qt system-config-printer transmission-gtk tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-bin gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec60 exfalso flac font-manager libjpeg-dev xfce4-screenshooter catfish libglx-mesa0 libgl1-mesa-dri thunar-archive-plugin -y
            apt install dbus-x11 build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev openssl miniupnpc libao-dev vainfo vdpauinfo glmark2-* -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            	cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

		options=(1 "Debian (server)"
 		         2 "Debian for Raspberry Pi (server)"
         		 3 "Raspberry Pi OS (server)"
			 4 "Armbian (Debian server)")

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
		    case $choice in
		        1)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
            
		            ;;
		        2)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
		            ;;

		        3)
		            bash ./firmware.sh
		            ;;
		        4)
		            bash ./firmware.sh
            		    ;;
            
    			    esac
			done
            ;;
        8)
            	cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

		options=(1 "Debian (server)"
 		         2 "Debian for Raspberry Pi (server)"
         		 3 "Raspberry Pi OS (server)"
			 4 "Armbian (Debian server)")

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
		    case $choice in
		        1)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
            
		            ;;
		        2)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			    echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
		            ;;

		        3)
		            bash ./firmware.sh
		            ;;
		        4)
		            bash ./firmware.sh
            		    ;;
            
    			    esac
			done
            ;;

    esac
done
