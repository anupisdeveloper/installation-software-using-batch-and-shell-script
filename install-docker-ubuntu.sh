#!/bin/bash

#Download docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#Update system
sudo apt-get update

apt-cache policy docker-ce

#Install docker
sudo apt-get install -y docker-ce

#To know the status of installation
sudo systemctl status docker

#If you want to use docker without 'sudo'
sudo usermod -aG docker ${USER}
su - ${USER}
id -nG

echo "Docker Installed Successfully Enjoy !!"
