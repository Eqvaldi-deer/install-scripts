cmd=(dialog --keep-tite --menu "Select Firmware:" 22 76 16)

options=(1 "Intel PC "
         2 "Intel PC Realtek Wlan/ETH Firmware"
         3 "Intel PC Brodcom Wlan/ETH Firmware"
         4 "AMD PC"
         5 "AMD PC Realtek Wlan/ETH Firmware"
         6 "AMD PC Brodcom Wlan/ETH Firmware"
         7 "Raspberry Pi Firmware"
         8 "Raspberry Pi Firmware/WideWine (RPIOS)"
         9 "Intel Server Firmware"
         10 "AMD Server Firmware"
	 11 "Linux Firmware/Realtek Wlan/ETH Firmware"
         12 "Linux Firmware/Brodcom Wlan/ETH Firmware"
         13 "Armbian Firmware/Realtek Wlan/ETH Firmware"
         14 "Armbian Firmware/Brodcom Wlan/ETH Firmware"
         15 "ARM Server Firmware"
         16 "Skip to headers install")
         
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            apt install intel-microcode firmware-sof-signed firmware-misc-nonfree firmware-linux-free -y
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;
        2)
            apt install intel-microcode firmware-sof-signed firmware-realtek firmware-misc-nonfree firmware-linux-free -y
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;
        3)
            apt install intel-microcode firmware-sof-signed firmware-misc-nonfree firmware-linux-free firmware-brcm80211 -y
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;
        4)
            apt install firmware-amd-graphics amd64-microcode -y
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;
        5)
            apt install firmware-amd-graphics amd64-microcode firmware-realtek -y
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;
        6)
            apt install firmware-amd-graphics amd64-microcode firmware-brcm80211 -y
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;
        7)
            apt install raspi-firmware -y
	  cmd=(dialog --keep-tite --menu "Select program suite:" 22 76 16)

	  options=(1 "Minimal"
                   2 "Basic"
         	   3 "Full")

	  choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

	  for choice in $choices
	  do
	      case $choice in
        	  1)
            		apt install gufw handbrake audacious audacity putty gimp dosbox milkytracker cmake -y
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
        	  2)
           		apt install gufw handbrake audacious audacity putty gimp vlc-plugin-fluidsynth fluidsynth prboom-plus freedoom dosbox milkytracker cmake -y
            		apt purge minetest-server
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
      		  3)
        		apt install gufw handbrake audacious audacity putty gimp vlc-plugin-fluidsynth fluidsynth mixxx ardour prboom-plus freedoom dosbox minetest* bsdgames gnome-2048 gnome-breakout milkytracker cmake -y
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
		
		    esac
		done
            ;;
        8)
            apt install raspi-firmware libwidevinecdm0 -y
	  cmd=(dialog --keep-tite --menu "Select program suite:" 22 76 16)

	  options=(1 "Minimal"
                   2 "Basic"
         	   3 "Full")

	  choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

	  for choice in $choices
	  do
	      case $choice in
        	  1)
            		apt install gufw handbrake audacious audacity putty gimp dosbox milkytracker cmake -y
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
        	  2)
           		apt install gufw handbrake audacious audacity putty gimp vlc-plugin-fluidsynth fluidsynth prboom-plus freedoom dosbox milkytracker cmake -y
            		apt purge minetest-server
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
      		  3)
        		apt install gufw handbrake audacious audacity putty gimp vlc-plugin-fluidsynth fluidsynth mixxx ardour prboom-plus freedoom dosbox minetest* bsdgames gnome-2048 gnome-breakout milkytracker cmake -y
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
		
		    esac
		done
            ;;
        9)
            apt install intel-microcode firmware-sof-signed firmware-misc-nonfree firmware-linux-free ixp4xx-microcode samba openssh-* -y
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;
        10)
            apt install amd64-microcode firmware-misc-nonfree firmware-linux-free ixp4xx-microcode samba openssh-* -y
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;
        11)
            apt install firmware-misc-nonfree firmware-linux-free firmware-realtek -y
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;
        12)
            apt install firmware-misc-nonfree firmware-linux-free firmware-brcm80211 -y
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;
        13)
	  cmd=(dialog --keep-tite --menu "Select program suite:" 22 76 16)

	  options=(1 "Minimal"
                   2 "Basic"
         	   3 "Full")

	  choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

	  for choice in $choices
	  do
	      case $choice in
        	  1)
            		apt install gufw handbrake audacious audacity putty gimp dosbox milkytracker cmake -y
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
        	  2)
           		apt install gufw handbrake audacious audacity putty gimp vlc-plugin-fluidsynth fluidsynth prboom-plus freedoom dosbox milkytracker cmake -y
            		apt purge minetest-server
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
      		  3)
        		apt install gufw handbrake audacious audacity putty gimp vlc-plugin-fluidsynth fluidsynth mixxx ardour prboom-plus freedoom dosbox minetest* bsdgames gnome-2048 gnome-breakout milkytracker cmake -y
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
		
		    esac
		done
            ;;
        14)
	  cmd=(dialog --keep-tite --menu "Select program suite:" 22 76 16)

	  options=(1 "Minimal"
                   2 "Basic"
         	   3 "Full")

	  choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

	  for choice in $choices
	  do
	      case $choice in
        	  1)
            		apt install gufw handbrake audacious audacity putty gimp dosbox milkytracker cmake -y
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
        	  2)
           		apt install gufw handbrake audacious audacity putty gimp vlc-plugin-fluidsynth fluidsynth prboom-plus freedoom dosbox milkytracker cmake -y
            		apt purge minetest-server
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
      		  3)
        		apt install gufw handbrake audacious audacity putty gimp vlc-plugin-fluidsynth fluidsynth mixxx ardour prboom-plus freedoom dosbox minetest* bsdgames gnome-2048 gnome-breakout milkytracker cmake -y
        		cmd=(dialog --keep-tite --menu "Select Web browser:" 22 76 16)
		
          		options=(1 "chromium"
                		 2 "firefox-esr"
                		 3 "qutebrowser"
                		 4 "Do not install")

            		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

            		for choice in $choices
           		do
                 	    case $choice in
                    		1)
                        	    apt install chromium -y
                        	    exit
                        	    ;;
                    		2)
                        	    apt install firefox-esr -y
                        	    exit
                         	    ;;
                    		3)
                        	    apt install qutebrowser -y
                                    exit
    		                    ;;
    		                4)
    		                    exit
               		            ;;
		                esac
		            done
		            ;;
		
		    esac
		done
            ;;
        15)
            apt install firmware-misc-nonfree firmware-linux-free ixp4xx-microcode samba openssh-* -y
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;
        16)
		cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)
		
		options=(1 "Amd64"
         		 2 "686"
   		         3 "Arm64"
   		         4 "Armmp"
   		         5 "Marvell"
   		         6 "686-pae"
   		         7 "Do not install")
		
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		
		for choice in $choices
		do
    		    case $choice in
        		1)
            		    apt install linux-headers-amd64 -y
            		    bash ./other.sh
            		    ;;
      			2)
            		    apt install linux-headers-686 -y
            		    bash ./other.sh
            		    ;;
        		3)
            		    apt install linux-headers-arm64 -y
            		    bash ./other.sh
            		    ;;
        		4)
            		    apt install linux-headers-armmp -y
            		    bash ./other.sh
            		    ;;
        		5)
            		    apt install linux-headers-marvell -y
            		    bash ./other.sh
            		    ;;
        		6)
            		    apt install linux-headers-686-pae -y
            		    bash ./other.sh
            		    ;;
        		7)
            		    bash ./other.sh
            		    ;;

	    		    esac
			done
            ;;

    esac
done
