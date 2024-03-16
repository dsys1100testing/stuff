#!/bin/bash
apt update && apt upgrade -y
apt install kde-plasma-desktop plasma-nm ark gdebi neofetch -y
apt autoremove -y
echo " "
echo " "
echo "add your username to sudoers:"
echo "usermod -aG sudo UsErNaMe"
echo "and reboot!"
echo " "
echo " "