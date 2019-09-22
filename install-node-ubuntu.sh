#!/bin/bash

#Install Python properties
sudo apt-get install python-software-properties

#Download Node Js (please mention based on your requirement
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

#Installing node js
sudo apt-get install nodejs -y

#Check NodeJs version
node -v

#Check npm version
npm -v

#Enjoy Node js
echo "Node and Npm Installed Enjoy !!"