#!/bin/bash
sudo dpkg --add-architecture i386
sudo add-apt-repository multiverse -y
sudo apt update && sudo apt upgrade -y
sudo apt install curl file libc6 libnss3 policykit-1 xz-utils zenity bubblewrap curl icoutils tar libvulkan1 libvulkan1:i386 wget zenity zstd cabextract xdg-utils openssl bc libgl1-mesa-glx libgl1-mesa-glx:i386 -y
wget -c "https://github.com/Castro-Fidel/PortWINE/raw/master/portwine_install_script/PortProton_1.0" && sh PortProton_1.0