#!/bin/sh
mkdir ./Debra-Ports
cd ./Debra-Ports
 

dialog --msgbox "DO NOT RUN Debra-Ports ON UBUNTU BASED DISTROS" 0 0

cmd=(dialog --keep-tite --menu "Select a Port:" 22 76 16)

options=(1 "Dhewm3"
         2 "Eduke32"
         3 "Darkplaces"
         4 "Minetest"
         5 "Ioq3"
         6 "worldofpadman"
         7 "Yamagi Quake II"
         8 "Duckstation (PSX emu.)"
         9 "iortcw"
	 10 "DSDA-Doom"
	 11 "Exit")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
          git clone https://github.com/dhewm/dhewm3.git
	  cd dhewm3/
	  cmake ./neo/
	  make -j$(nproc)
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        2)
          git clone https://voidpoint.io/terminx/eduke32.git
	  cd eduke32/
	  make -j$(nproc) USE_OPENGL=0 POLYMER=0 USE_LIBVPX=0 OPTLEVEL=2 WITHOUT_GTK=1
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        3)
          git clone https://github.com/DarkPlacesEngine/darkplaces.git
	  cd darkplaces/
	  make -j$(nproc) sdl-release
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        4)
          git clone --depth 1 https://github.com/minetest/minetest.git
	  cd minetest
	  git clone --depth 1 https://github.com/minetest/minetest_game.git games/minetest_game
 	  git clone --depth 1 https://github.com/minetest/irrlicht.git lib/irrlichtmt
	  git clone https://codeberg.org/SumianVoice/backroomtest.git games/backroomtest
	  cmake . -DRUN_IN_PLACE=TRUE
	  make -j$(nproc)
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        5)
          git clone https://github.com/ioquake/ioq3.git
	  cd ioq3/
	  make -j$(nproc)
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        6)
          wget https://github.com/PadWorld-Entertainment/worldofpadman/archive/refs/tags/v1.6.2.zip
	  unzip *.zip
	  rm -rf ./*.zip
	  cd worldofpadman-1.6.2/
	  make -j$(nproc)
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        7)
          #git clone https://github.com/yquake2/yquake2.git
	  #wget https://github.com/yquake2/yquake2/archive/refs/tags/QUAKE2_8_10.zip  #This line is for Debian 12
	  wget https://github.com/yquake2/yquake2/archive/refs/tags/QUAKE2_8_30.zip
   	  unzip *.zip
	  rm -rf ./*.zip
	  #cd yquake2-QUAKE2_8_10/
   	  cd yquake2-QUAKE2_8_30/
	  make -j$(nproc)
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        8)
          git clone https://github.com/stenzek/duckstation.git -b dev
	  cd duckstation/
	  cmake ./
	  make -j$(nproc)
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        9)
          git clone https://github.com/iortcw/iortcw.git
	  cd ioq3/
	  make -j$(nproc)
	  cd ..
	  cd ..
          bash ./Debra-Ports.sh
            ;;
        10)
	  git clone https://github.com/kraflab/dsda-doom.git
	  cd ./dsda-doom/
          cd ./prboom2/
	  cmake ./
	  make -j$(nproc)
	  cd ..
	  cd ..
    	  cd ..
          bash ./Debra-Ports.sh
            ;;
        11)
          exit
            ;;

    esac
done
