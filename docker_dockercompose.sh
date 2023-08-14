#!/bin/bash

# Update the package list
sudo apt update

# Install required packages to allow apt to use repositories over HTTPS
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add Docker repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package list again
sudo apt update

# Install Docker
sudo apt install docker-ce -y

# Add your user to the "docker" group to run Docker commands without sudo
sudo usermod -aG docker $USER

# Install Docker Compose
sudo curl -fsSL -o /usr/local/bin/docker-compose https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)
sudo chmod +x /usr/local/bin/docker-compose

# Display Docker and Docker Compose versions
docker --version
docker-compose --version

# give permission
# chmod +x install_docker.sh

# RUN
# ./install_docker.sh
