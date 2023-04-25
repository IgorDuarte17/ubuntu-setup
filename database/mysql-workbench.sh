#!/bin/bash

# Install MySQL Workbench

echo 'installing MySQL Workbench' 
sudo snap install mysql-workbench-community
clear

echo 'installing Password Manager Service'
sudo snap connect mysql-workbench-community:password-manager-service :password-manager-service
clear
