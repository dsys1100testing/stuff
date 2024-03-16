#!/bin/bash
apt update && apt upgrade -y
sed -i 's/bullseye/trixie/g' /etc/apt/sources.list
sed -i 's/bookworm/trixie/g' /etc/apt/sources.list
sed -i 's/Bookworm/Trixie/g' /etc/apt/sources.list
sed -i 's/Bullseye/Trixie/g' /etc/apt/sources.list
apt full-upgrade -y && apt autoremove -y
reboot