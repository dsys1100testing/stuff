#!/bin/sh

# Thanks:
# https://gist.github.com/lassekongo83/808b19e034c05d10ac4e3cc259808e4e
# https://gist.github.com/allisson/7ff8487b696fd30c4767341d3d797595
# https://www.debugpoint.com/remove-snap-ubuntu

for p in $(snap list | awk '{print $1}'); do
  sudo snap remove $p
done
sudo systemctl stop snapd
for m in /snap/core/*; do
   sudo umount $m
done
for p in $(snap list | awk '{print $1}'); do
  sudo snap remove $p
done
sudo apt purge snapd -y
sudo apt purge gnome-software-plugin-snap -y
sudo apt purge plasma-discover-backend-snap -y
sudo apt autoremove -y
rm -rf ~/snap && sudo rm -rf /snap && sudo rm -rf /var/snap && sudo rm -rf /var/lib/snapd && sudo rm -rf /var/cache/snapd
sudo apt-mark hold snapd
sudo apt-mark hold gnome-software-plugin-snap
sudo apt-mark hold plasma-discover-backend-snap
sudo add-apt-repository ppa:mozillateam/ppa -y
echo '
Package: snapd
Pin: release a=*
Pin-Priority: -10
' | sudo tee /etc/apt/preferences.d/nosnap.pref
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox.pref
sudo apt update && sudo apt upgrade -y && sudo apt install firefox -y && apt autoremove -y
