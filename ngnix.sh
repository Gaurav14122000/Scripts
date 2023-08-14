#!/bin/bash

# Update the package list and install Nginx
sudo apt update
sudo apt install nginx -y

# Start Nginx service
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Display Nginx status
sudo systemctl status nginx
