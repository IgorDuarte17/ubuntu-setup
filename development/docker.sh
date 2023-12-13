#!/bin/bash

# Install Dependencies
echo 'installing Dependencies' 
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
    
# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88
    
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"

   
# Install Docker Engine
echo 'installing Docker Engine'
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io


# Permissions
echo 'Configure Permissions'
echo "What your user.name?"
read user_name

sudo usermod -aG docker ${USER}
su - ${USER}
id -nG #Check groups
sudo usermod -aG docker $user_name


# Install Docker Compose
echo 'installing Docker Compose'
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose


# Permissions
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose


# Check Version
echo 'Check Versions'
docker --version
docker-compose --version
