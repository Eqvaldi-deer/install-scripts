
cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

options=(1 "Debian (server)"
         2 "Armbian (Debian server)")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            rm /etc/apt/sources.list
            echo 'deb http://deb.debian.org/debian bullseye main contrib non-free' >> /etc/apt/sources.list
            echo 'deb-src http://deb.debian.org/debian bullseye main contrib non-free' >> /etc/apt/sources.list
            echo 'deb http://deb.debian.org/debian bullseye-updates main contrib non-free' >> /etc/apt/sources.list
            echo 'deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free' >> /etc/apt/sources.list
            echo 'deb http://security.debian.org/debian-security/ bullseye-security main contrib non-free' >> /etc/apt/sources.list
            echo 'deb-src http://security.debian.org/debian-security/ bullseye-security main contrib non-free' >> /etc/apt/sources.list
            cat /etc/apt/sources.list
            apt update -y
            bash ./firmwareARM.sh
            
            ;;
        2)
            bash ./firmwareARM.sh
            ;;

    esac
done