#!/bin/bash

# Install Softwares


# Install Spotify
echo 'installing Spotify' 
snap install spotify
clear


# Install Postman
echo 'installing Postman' 
snap install postman
clear


# Install Slack
echo 'installing Slack' 
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.8-amd64.deb
sudo apt install ./slack-desktop-*.deb -y
clear


# Install Discord
echo 'installing Discord' 
wget -O discord-0.0.1.deb https://discordapp.com/api/download?platform=linux&format=deb
sudo dpkg -i discord-0.0.1.deb
clear
