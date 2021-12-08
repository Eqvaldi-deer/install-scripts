### WARNING
> DO NOT RUN THESE SCRIPTS ON UBUNTU BASED DISTRIBUTIONS

---

# Info

| NAME                        | STATE       | VERSION   | MAINTAINER   |
| :-------------------------- | :---------- | :-------- | :----------- |
| ArmbiandebianXFCE4.sh       | very stable | 3.0.0   | Eqvaldi-deer |
| ArmbiandebianLXDE.sh        | very stable | 3.0.0   | Eqvaldi-deer |
| debianlxqt.sh               | stable      | 2.4.0   | Eqvaldi-deer |
| debiancinnamon.sh           | very stable | 3.0.0   | Eqvaldi-deer |
| debianfvwm.sh               | very stable | 2.6.0   | Eqvaldi-deer |
| debianlxde.sh               | very stable | 3.0.0   | Eqvaldi-deer |
| debianmate.sh               | very stable | 3.0.0   | Eqvaldi-deer |
| debianxfce4.sh              | very stable | 3.0.0   | Eqvaldi-deer |
| debianXFCEBM.sh             | stable      | 3.0.0   | Eqvaldi-deer |

very stable - tested on both VMs and real hardware, no issues

stable - tested in VMs and real hardware, but some issues may pop up

semi-stable - same as stable, but has more issues

unstable - tested in VMs and real hardware, but not recommended for daily use

experimental - untested, for dev purposes only (USE AT YOUR OWN RISK)

# Ram usage in MB (Note:Ram  usage varies greatly depending on distro/arch)

* Armbian XFCE4 240-360MB
* Armbian LXDE 190MB
* debian lxqt 290MB
* debian cinnamon 550-590MB
* debian fvwm 180MB
* debian lxde 190-230MB
* debian mate 240-320MB
* debian xfce4 280-458MB
* debian xfce4 BM (Bare-Minimum-Version) (199-210MB)

### known bugs

* LXQT mas issues with some usb audio devices.
* Gbm3 (will not run on low end hardware for example raspi4/400)

### Supported Distros

* Debian Buster (Old-stable)
* Debian Bullseye (Stable)
* Debian Bookworm (Testing)
* Debian Sid (Unstable)
* Debian Armbian Bullseye (Stable)

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


### NOTE: Armbian scripts are for bash only

* ArmbiandebianXFCE4.sh
* ArmbiandebianLXDE.sh

---
credits
> [BeanGreen247](https://github.com/BeanGreen247) (For this readme file)
