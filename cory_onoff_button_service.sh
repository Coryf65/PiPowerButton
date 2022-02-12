#!/bin/bash

echo "Downloading button script..."
curl -O https://raw.githubusercontent.com/
echo "Downloading button service..."
curl -O https://raw.githubusercontent.com/

if [ ! -d "/usr/local/bin" ]; then
    sudo mkdir -p /usr/local/bin
fi

echo "Setting up..."
echo "Making script executable"
sudo chmod +x cory_onoff_button.py
sudo mv cory_onoff_button.py /usr/local/bin
sudo mv cory_onoff_button_service.service /etc/systemd/system
echo "Starting service..."
sudo systemctl start cory_onoff_button_service.service
echo "Enabling service..."
sudo systemctl enable cory_onoff_button_service.service

echo "completed setup...."