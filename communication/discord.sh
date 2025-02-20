#!/bin/bash

# Install Discord
echo 'installing Discord' 
wget -O discord.deb "https://discord.com/api/download?platform=linux&format=deb"
sudo dpkg -i discord-0.0.1.deb
clear
