#!/bin/bash

# Update the package list
sudo apt update

# Install Java (required by Jenkins)
sudo apt install openjdk-8-jdk -y

# Add Jenkins repository key
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Add Jenkins repository to sources
echo "deb http://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list

# Update the package list again
sudo apt update

# Install Jenkins
sudo apt install jenkins -y

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on boot
sudo systemctl enable jenkins

# Display Jenkins status
sudo systemctl status jenkins

# to run give permission
# chmod +x install_jenkins.sh

# RUN
# ./install_jenkins.sh



