#!/bin/bash

# base installation of Arch linux

#echo "setting up time and date"
#timedatectl set-ntp true

echo "partition your disks..."
echo "Enter 1 for cfdisk and 2 for fdisk"
read choice

if [ $choice==1 ]
then 
    sudo fdisk -l;
    if [ $?!=0 ]
    then 
        echo "error"
        exit 1
    else 
        echo "nothing"
    fi
    echo "Enter your disk name eg. sda, sdb, nvme01n1 etc."
    read disk_name
    sudo cfdisk /dev/$disk_name
elif [ $choice==2 ]
then
    sudo fdisk -l
else 
    echo "Wrong input"
fi

