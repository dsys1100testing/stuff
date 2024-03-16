#!/bin/sh

# Thanks: https://habr.com/ru/articles/172137/

sudo modprobe zram num_devices=4
sudo echo $((1536*1024*1024)) > /sys/block/zram0/disksize
sudo echo $((1536*1024*1024)) > /sys/block/zram1/disksize
sudo echo $((1536*1024*1024)) > /sys/block/zram2/disksize
sudo echo $((1536*1024*1024)) > /sys/block/zram3/disksize
sudo mkswap /dev/zram0
sudo mkswap /dev/zram1
sudo mkswap /dev/zram2
sudo mkswap /dev/zram3
sudo swapon /dev/zram0 -p 10
sudo swapon /dev/zram1 -p 10
sudo swapon /dev/zram2 -p 10
sudo swapon /dev/zram3 -p 10