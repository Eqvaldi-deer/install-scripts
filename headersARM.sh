
cmd=(dialog --keep-tite --menu "Select linux Headers:" 22 76 16)

options=(1 "Arm64"
         2 "Armmp"
         3 "Marvell"
         4 "Do not install")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            apt install linux-headers-arm64 -y
            bash ./other.sh
            ;;
        2)
            apt install linux-headers-armmp -y
            bash ./other.sh
            ;;
        3)
            apt install linux-headers-marvell -y
            bash ./other.sh
            ;;
        4)
            bash ./other.sh
            ;;

    esac
done
