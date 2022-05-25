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
         11 "Skip to headers install")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            apt install intel-microcode firmware-misc-nonfree firmware-linux-free -y
            bash ./headers.sh
            ;;
        2)
            apt install intel-microcode firmware-realtek firmware-misc-nonfree firmware-linux-free -y
            bash ./headers.sh
            ;;
        3)
            apt install intel-microcode firmware-misc-nonfree firmware-linux-free firmware-brcm80211 -y
            bash ./headers.sh
            ;;
        4)
            apt install firmware-amd-graphics amd64-microcode -y
            bash ./headers.sh
            ;;
        5)
            apt install firmware-amd-graphics amd64-microcode firmware-realtek -y
            bash ./headers.sh
            ;;
        6)
            apt install firmware-amd-graphics amd64-microcode firmware-brcm80211 -y
            bash ./headers.sh
            ;;
        7)
            apt install raspi-firmware -y
            bash ./headers.sh
            ;;
        8)
            apt install raspi-firmware libwidevinecdm0 -y
            bash ./headers.sh
            ;;
        9)
            apt install intel-microcode firmware-misc-nonfree firmware-linux-free ixp4xx-microcode -y
            bash ./headers.sh
            ;;
        10)
            apt install amd64-microcode firmware-misc-nonfree firmware-linux-free ixp4xx-microcode -y
            bash ./headers.sh
            ;;
        11)
            bash ./headers.sh
            ;;

    esac
done