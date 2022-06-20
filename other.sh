
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
                     3 "qutebrowser (Armbian)"
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
