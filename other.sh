
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
                        ./other2.sh
                        #exit
                        ;;
                    2)
                        apt install firefox-esr -y
                        ./other2.sh
                        #exit
                        ;;
                    3)
                        apt install qutebrowser -y
                        ./other2.sh
                        #exit
                        ;;
                    4)
                        ./other2.sh
                        #exit
                        ;;
                esac
            done
            ;;
        2)
            apt install gufw handbrake audacious audacity putty gimp vlc-plugin-fluidsynth fluidsynth dsda-doom freedoom dosbox milkytracker cmake -y
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
                        ./other2.sh
                        #exit
                        ;;
                    2)
                        apt install firefox-esr -y
                        ./other2.sh
                        #exit
                        ;;
                    3)
                        apt install qutebrowser -y
                        ./other2.sh
                        #exit
                        ;;
                    4)
                        ./other2.sh
                        #exit
                        ;;
                esac
            done
            ;;
        3)
            apt install gufw handbrake audacious audacity putty gimp vlc-plugin-fluidsynth fluidsynth mixxx ardour dsda-doom freedoom dosbox minetest* bsdgames gnome-2048 gnome-breakout milkytracker cmake -y
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
                        ./other2.sh
                        #exit
                        ;;
                    2)
                        apt install firefox-esr -y
                        ./other2.sh
                        #exit
                        ;;
                    3)
                        apt install qutebrowser -y
                        ./other2.sh
                        #exit
                        ;;
                    4)
                        ./other2.sh
                        #exit
                        ;;
                esac
            done
            ;;

    esac
done
