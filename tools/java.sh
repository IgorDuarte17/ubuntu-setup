#!/bin/bash

# Install and Configure Java

# Remove OpenJDK
echo 'Remove OpenJDK' 
sudo apt-get purge openjdk-\*


# Install Java
echo 'installing Java JRE' 

# Download Java JRE Server
# Download Link: https://www.java.com/pt_BR/download/linux_manual.jsp
cd ~/Downloads
sudo tar -zxf jre-8u251-linux-x64.tar.gz -C /opt

# Create a directory to install JRE in with
sudo mkdir /usr/local/java

# Move the JRE binaries into the directory
sudo mv jre-8u251-linux-x64.tar.gz /usr/local/java

# Go into the install directory
cd /usr/local/java

# Unpack the tarball
sudo tar zxvf jre-8u251-linux-x64.tar.gz


# Post-installation steps

# delete the tarball by running
sudo rm jre-8u251-linux-x64.tar.gz

#Let the system know where JRE is installed
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jre1.8.0_251/bin/java" 1

# check the installation by running
java -version

