#!/bin/bash

#Install Nginx
sudo apt-get install nginx

#Install Letsencrypt

#Add Certbot PPA
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update

#Install Certbot
sudo apt-get install certbot python-certbot-nginx

#Generate SSL certificates
sudo certbot certonly --preferred-challenges=dns --email <enter your email> --server https://acme-v02.api.letsencrypt.org/directory --agree-tos -d <your domain 1> -d <Your domain 2>

#Sub-domain based configuration
sudo nano /etc/nginx/sites-available/<your subdomain>
sudo ln -s /etc/nginx/sites-available/<your subdomain> /etc/nginx/sites-enabled/<your subdomain>

#Applying the Configuration
sudo service nginx restart

echo "Enjoy Free SSL Certificate"

