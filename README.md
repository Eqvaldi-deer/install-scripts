### WARNING
> DO NOT RUN THESE SCRIPTS ON UBUNTU BASED DISTRIBUTIONS

---

# Info

* ArmbiandebianXFCE4.sh (very stable) ver.2.0
* ArmbiandebianLXDE.sh (very stable) ver.2.0
* archlinuxgnome.sh (stable) ver.1.6
* debianlxqt.sh (stable) ver.1.2
* debianbudgie.sh (stable) ver.1.0
* debiancinnamon.sh (very stable) ver.2.0
* debianfvwm.sh (very stable) ver.1.8
* debiangnome.sh (very stable) ver.2.0
* debianlxde.sh (very stable) ver.2.0
* debianmate.sh (very stable) ver.2.0
* debianxfce4.sh (very stable) ver.2.0

very stable - tested on both VMs and real hardware, no issues

stable - tested in VMs and real hardware, but some issues may pop up

semi-stable - same as stable, but has more issues

unstable - tested in VMs and real hardware, but not recommended for daily use

experimental - untested, for dev purposes only (USE AT YOUR OWN RISK)

# Ram usage in MB

* Armbian XFCE4 
* Armbian LXDE 190MB
* archlinux gnome (Wayland 464MB) (Xorg 486MB)
* debian lxqt 290MB
* debian budgie 
* debian cinnamon 
* debian fvwm 
* debian gnome 
* debian lxde 
* debian mate 
* debian xfce4 

### known bugs

* Mate desktop (nvidia-driver causes everything to be oversized)
* LXQT mas issues with some usb audio devices.
* Archlinuxgnome (tested only on a VM)
* Gbm3 (will not run on low end hardware for example raspi4/400)

### QnA

* Q: Why?
* A: Why Not.
* Q: What is the point?
* A: To make DEs run on low end hardware. (example:embedded devices and thin clients etc.)
* Q: Do you support devices with 1 cpu core and 512mb of ram?
* A: yes but you need to install lxde lxqt or FVWM.
* Q: If i have a AMD E1-6010 and 2 gb of ram wil it run?
* A: Yes but you need to use lxde,lxqt,mate,xfce,FVWM,budgie.
* Q: Do you support Armbian?
* A: Yes but only XFCE4 LXDE.
* Q: why are you not using Firefox,Brave,etc?
* A: we use what works on as many hardware platforms as posible. (example:chromium is used on RaspberryPi OS,Armbian)
* Q: What about Brave,etc?
* A: we use what is located in the debian repos.

### Install

debiancinnamon.sh    
* installs cinnamon desktop 
* installs core applications (webbrowser, text editor, etc.)
  
### The listed scripts below are the same as the **debiancinnamon.sh** with the only dfference being the desktop enviroment selected and app related with the DE of your choice
> debianlxde.sh       //LXDE
> 
> debianmatefull.sh   //MATE
>     
> debianxfce4.sh      //XFCE

---

### Extra scripts

debianprinter.sh
* isntalls printer stuff

debiantononfree.sh
* edits your sources.list file by adding contrib and non-free (nonfree)

debianunstable.sh 
* moves you to debian unstable

debiantesting.sh 
* moves you to debian testing

debiannonfreefirmware.sh
* install firmware for realtek, misc and amd gpu firmware (commented out)

debianextras.sh    
* isntalls extra applications like audio editors among others

debianheaders.sh
* installs linux headers for linux kernel (intel and amd only aka x86)

debianoffice.sh
* installs libreoffice with microsoft fonts

debiangames.sh
* adds games, some are commennted out, to install them make sure to edit the script by commenting them out

### NOTE: if you want the older scripts make sure to he to the link below!

[OLD SCRIPTS repo](https://github.com/LOSOperatingsystem/install-scripts-LOS-OLD-)

### NOTE: arch linux scripts are for bash and you have to have git installed

archlinuxgnome.sh

### NOTE: Armbian scripts are for bash and you have to have git installed

* ArmbiandebianXFCE4.sh
* ArmbiandebianLXDE.sh

---
credits
> [BeanGreen247](https://github.com/BeanGreen247) (For this readme file and archlinuxgnome.sh)
