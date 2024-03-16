#!/bin/bash
apt update && apt upgrade -y
apt install gnome-core network-manager-gnome file-roller sudo gdebi neofetch gnome-tweaks menulibre -y
apt autoremove -y
echo " "
echo " "
echo "add your username to sudoers:"
echo "usermod -aG sudo UsErNaMe"
echo "and reboot!"
echo " "
echo " "