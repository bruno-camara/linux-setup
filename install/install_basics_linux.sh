#!/bin/bash

echo "Installing Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb
rm google-chrome-stable_current_amd64.deb

echo "Installing VS Code"
sudo snap install --classic code

echo "Installing Vim"
sudo apt-get install vim

echo "Installing Git"
sudo apt install git-all

echo "Installing pip"
sudo apt install python3-pip
