### WARNING
> DO NOT RUN THESE SCRIPTS ON UBUNTU BASED DISTRIBUTIONS

---

# Info

* archlinuxgnome.sh (semi-stable) ver.0.9
* debianlxqt.sh (semi-stable) ver.0.9
* debianbudgie.sh (stable) ver.1.0
* debiancinnamon.sh (very stable) ver.2.0
* debianfvwm.sh (stable) ver.1.0
* debiangnome.sh (stable) ver.1.0
* debianlxde.sh (very stable) ver.2.0
* debianmate.sh (stable) ver.1.0
* debianxfce4.sh (very stable) ver.2.0

### known bugs

* Mate desktop (nvidia-driver couses everything to be oversized)
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

---
credits
> [BeanGreen247](https://github.com/BeanGreen247) (For this readme file and archlinuxgnome.sh)
