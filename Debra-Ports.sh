#!/bin/sh
mkdir ./Debra-Ports
cd ./Debra-Ports
apt update 
apt install build-essential dialog git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev openssl libao-dev -y
apt clean

dialog --msgbox "DO NOT RUN Debra-Ports ON UBUNTU BASED DISTROS" 0 0

cmd=(dialog --keep-tite --menu "Select Desktop Environment:" 22 76 16)

options=(1 "Dhewm3"
         2 "Eduke32"
         3 "Darkplaces"
         4 "Darkplaces-nexuiz"
         5 "Ioq3"
         6 "worldofpadman"
         7 "Yamagi Quake II"
         8 "Duckstation (PSX emu.)"
         9 "Flycast (Dreamcast emu.) (WIP)"
	 10 "Exit")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
          git clone https://github.com/dhewm/dhewm3.git
	  cd dhewm3/
	  cmake ./neo/
	  make
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        2)
          git clone https://voidpoint.io/terminx/eduke32.git
	  cd eduke32/
	  make USE_OPENGL=0 POLYMER=0 USE_LIBVPX=0 OPTLEVEL=2 WITHOUT_GTK=1
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        3)
          git clone https://github.com/DarkPlacesEngine/darkplaces.git
	  cd darkplaces/
	  make sdl-release
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        4)
          git clone https://github.com/DarkPlacesEngine/darkplaces.git
	  cd darkplaces/
	  make sdl-nexuiz
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        5)
          git clone https://github.com/ioquake/ioq3.git
	  cd ioq3/
	  make
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        6)
          wget https://github.com/PadWorld-Entertainment/worldofpadman/archive/refs/tags/v1.6.2.zip
	  unzip *.zip
	  rm -rf ./*.zip
	  cd worldofpadman-1.6.2/
	  make
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        7)
          #git clone https://github.com/yquake2/yquake2.git
	  wget https://github.com/yquake2/yquake2/archive/refs/tags/QUAKE2_8_10.zip
	  unzip *.zip
	  rm -rf ./*.zip
	  cd yquake2-QUAKE2_8_10/
	  make
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        8)
          git clone https://github.com/stenzek/duckstation.git -b dev
	  cd duckstation/
	  cmake ./
	  make
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        9)
          apt install libminiupnpc-dev liblua5.4-dev spirv-tools -y
	  apt install mame-tools --no-install-recommends -y
	  git clone https://github.com/flyinghead/flycast.git
	  cd flycast/
	  cmake ./
	  make
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        10)
          exit
            ;;

    esac
done
