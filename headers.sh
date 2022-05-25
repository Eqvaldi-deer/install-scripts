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