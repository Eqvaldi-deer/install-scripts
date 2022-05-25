
cmd=(dialog --keep-tite --menu "Select Firmware:" 22 76 16)

options=(1 "Linux Firmware/Realtek Wlan/ETH Firmware"
         2 "Linux Firmware/Brodcom Wlan/ETH Firmware"
         3 "Armbian Firmware/Realtek Wlan/ETH Firmware"
         4 "Armbian Firmware/Brodcom Wlan/ETH Firmware"
         5 "Raspberry Pi Firmware"
         6 "Raspberry Pi Firmware/Widewine (RPIOS)"
         7 "ARM Server Firmware"
         8 "ARM Server Firmware"
         9 "Skip to headers install")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            apt install firmware-misc-nonfree firmware-linux-free firmware-realtek -y
            bash ./headersARM.sh
            ;;
        2)
            apt install firmware-misc-nonfree firmware-linux-free firmware-brcm80211 -y
            bash ./headersARM.sh
            ;;
        3)
            apt install firmware-realtek -y
            bash ./headersARM.sh
            ;;
        4)
            apt install firmware-brcm80211 -y
            bash ./headersARM.sh
            ;;
        5)
            apt install raspi-firmware -y
            bash ./headersARM.sh
            ;;
        6)
            apt install raspi-firmware libwidevinecdm0 -y
            bash ./headersARM.sh
            ;;
        7)
            apt install firmware-misc-nonfree firmware-linux-free ixp4xx-microcode -y
            bash ./headersARM.sh
            ;;
        8)
            apt install firmware-misc-nonfree firmware-linux-free ixp4xx-microcode -y
            bash ./headersARM.sh
            ;;
        9)
            bash ./headersARM.sh
            ;;

    esac
done