#!/bin/bash
sudo sed -i 's/managed=false/managed=true/g' /etc/NetworkManager/NetworkManager.conf
sudo reboot