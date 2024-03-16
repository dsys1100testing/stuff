#!/bin/bash
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt update
sudo apt install libpoppler-glib8:{i386,amd64}=22.02.0-2ubuntu0.3 --allow-downgrades -y
sudo apt install --install-recommends winehq-stable -y
mkdir -p ~/.local/share/applications/
wget -O ~/.local/share/applications/winecfg.desktop https://raw.githubusercontent.com/dsys1100/stuff/main/Wine/winecfg.desktop
wget -O ~/.local/share/applications/Wine_CMD.desktop https://raw.githubusercontent.com/dsys1100/stuff/main/Wine/Wine_CMD.desktop
wget -O ~/.local/share/applications/Wine_Explorer.desktop https://raw.githubusercontent.com/dsys1100/stuff/main/Wine/Wine_Explorer.desktop
echo " "
echo "All done! Please launch winecfg"