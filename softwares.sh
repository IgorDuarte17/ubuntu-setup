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


# Install Chrome
echo 'installing Chrome' 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
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


# Install vim
echo 'installing vim'
sudo apt install vim -y
clear


#Install Make
echo 'installing Make'
sudo apt-get install make
clear
