#!/bin/bash

#We can see if the system has any configured swap by typing:
sudo swapon --show

#You can verify that there is no active swap using the free utility
free -h

#Check Available Space on the Hard Drive Partition
df -h

#Create a Swap File ((It take 1GB For swap)
sudo dd if=/dev/zero of=/swapfile bs=1G count=2

#We can verify that the correct amount of space was reserved by typing
ls -lh /swapfile

#Enabling the Swap File
sudo chmod 600 /swapfile

#Verify the permissions change by typing
ls -lh /swapfile

#We can now mark the file as swap space by typing
sudo mkswap /swapfile

#We can verify that the swap is available by typing
sudo swapon --show

# Enable the swap file at boot time by editing the /etc/fstab file:

result=$(cat /etc/fstab | grep '/swapfile swap swap defaults 0 0')
string='/swapfile swap swap defaults 0 0'
if [ ! -z "$result" -a "$result" != " " ]; then
        echo "Settings already exists"
else
   echo "Setting up new configuration"
   echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
fi

echo "Enjoy Extra memory from your SSD As RAM !!"
