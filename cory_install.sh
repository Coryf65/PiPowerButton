#!/bin/bash

echo "Downloading button script..."
curl -O https://raw.githubusercontent.com/Coryf65/PiPowerButton/master/cory_onoff_button.py
echo "Downloading button service..."
curl -O https://raw.githubusercontent.com/Coryf65/PiPowerButton/master/cory_button.service

if [ ! -d "/usr/local/bin" ]; then
    sudo mkdir -p /usr/local/bin

echo "Setting up..."
echo "Making script executable"
sudo chmod +x cory_onoff_button.py
sudo mv cory_onoff_button.py /usr/local/bin
sudo mv cory_button.service /etc/systemd/system

echo "Starting service..."
sudo systemctl start cory_button.service

echo "Enabling service..."
sudo systemctl enable cory_button.service

echo "completed setup...."