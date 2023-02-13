### WARNING
> DO NOT RUN THESE SCRIPTS ON UBUNTU BASED DISTRIBUTIONS

---

# Info

### known bugs

* Gbm3 (will not run on low end hardware for example raspi4/400)
* Mate/lxde desktop (nvidia-driver causes everything to be oversized)

### Supported Distros

* Debian Bullseye (Old Stable)
* Debian Bookworm (Stable)
* Debian Armbian Bullseye (Old Stable)
* Debian Armbian bookworm (Stable)

### QnA

* Q: What is the point?
* A: To make DEs run on low end hardware. (example:embedded devices and thin clients etc.)
* Q: Do you support devices with 1 cpu core and 512mb of ram?
* A: yes but it is not Recomended.
* Q: If i have a AMD E1-6010 and 2 gb of ram wil it run?
* A: Yes but you need to use lxde,mate,xfce.
* Q: Do you support Armbian?
* A: Yes.
* Q: why are you not using Firefox,Brave,etc?
* A: we use what works on as many hardware platforms as posible. (example:chromium is used on RaspberryPi OS,Armbian)
* Q: What about Brave,etc?
* A: we use what is located in the debian repos.

### How to Start using on PC/Server/Raspberry PI
### NOTE: Armbian scripts are for bash only
```
run.sh
```
### How to Start using on ARM/ARM Server
```
run.sh
```

### configuration: GPU Intel VAAPI Driver
### NOTE: nonfree must be enabled before running this.
### NOTE: This Driver will remove the Intel media driver pakage.

This package contains the video decode and encode driver backend for the Intel G45 chipsets and Intel HD Graphics for the Intel Core processor family. 
The supported platforms include:

 * Cantiga, Intel GMA 4500MHD (GM45)
 * Ironlake, Intel HD Graphics for 2010 Intel Core processor family
 * Sandy Bridge, Intel HD Graphics for 2011 Intel Core processor family
 * Ivy Bridge
 * Haswell
 * Broadwell
 * Skylake
 * Kaby Lake
 * Coffee Lake
 * Cannon Lake

This package contains also contains the non-free encode shaders for VP8, VP9, HEVC and AVC for generation 7.5 hardware or newer.

* To install run: `sudo apt install i965-va-driver-shaders`


### configuration: NVIDIA
### NOTE: nonfree must be enabled before running this.

* Multiple precompiled driver versions are available for Debian 11 "Bullseye":


* Version 470.129.06
  Supports Kepler, Maxwell, Pascal, Turing, and all current Ampere GPUs. Supports Vulkan 1.2 and OpenGL 4.6.

  supported devices:https://us.download.nvidia.com/XFree86/Linux-x86_64/470.129.06/README/supportedchips.html


* Version 390.144
  Supports Fermi, Kepler, Maxwell, and most Pascal GPUs. Supports Vulkan 1.0 on Kepler and newer, supports up to OpenGL 4.5 depending on your card.

  supported devices:https://us.download.nvidia.com/XFree86/Linux-x86_64/390.144/README/supportedchips.html


* To install 470.xxx.xx run: `sudo apt install nvidia-driver`
* To install 390.xxx.xx run: `sudo apt install nvidia-legacy-390xx-driver`

### NOTE: If not sure follow these steps
install nvidia detect and some dependecies
```bash
sudo apt install nvidia-detect awk grep
```
next run this command to install the proper driver for your gpu
```bash
sudo apt install $(nvidia-detect|awk {'print $1'}|grep nvidia)
```

### configuration: Network Manager

* Wired Networks are Unmanaged by Default.

* As of Debian 6.0 "Squeeze", NetworkManager does not manage any interface defined in /etc/network/interfaces by default.

* Unmanaged devices means NetworkManager doesn't handle those network devices. This occurs when two conditions are met:

* The file /etc/network/interfaces contains anything about the interface, even:
  ```
  allow-hotplug eth0
  iface eth0 inet dhcp
  ```
  And /etc/NetworkManager/NetworkManager.conf contains:
  ```
  [main]
  plugins=ifupdown,keyfile

  [ifupdown]
  managed=false
  ```

* Enabling Interface Management

* If you want NetworkManager to handle interfaces that are enabled in /etc/network/interfaces:

  Set managed=true in /etc/NetworkManager/NetworkManager.conf.

* Restart NetworkManager: sudo service network-manager restart

* Starting with Debian 11 (bullseye), use: `sudo service NetworkManager restart`


### About Ubuntu Support

I do not support this distribution.

I supported images of Ubuntu 16.04.x to ubuntu 18.04.2

Since ubuntu 18.04.3 there have been several times where ubuntu/Canonical have made some changes.

For example:

* On embedded devices ubuntu runs slow.

* It can not be used with 1gb of ram or lower.

* Snaps are slow still in ubuntu 22.10 (Kinetic Kudu)

* And Ubuntu 22.10 does not have armhf support.
