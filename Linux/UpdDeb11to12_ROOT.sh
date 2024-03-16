#!/bin/bash
apt update && apt upgrade -y
sed -i 's/bullseye/bookworm/g' /etc/apt/sources.list
sed -i 's/Bullseye/Bookworm/g' /etc/apt/sources.list
apt full-upgrade -y && apt autoremove -y
reboot