#!/bin/bash

# Install Git

echo 'installing git' 
sudo apt install git -y


echo "What name do you want to use in GIT user.name?"
echo "For example, mine will be \"Igor Santos\""
read git_config_user_name
git config --global user.name "$git_config_user_name"
clear 


echo "What email do you want to use in GIT user.email?"
echo "For example, mine will be \"igors.d@hotmail.com"
read git_config_user_email
git config --global user.email $git_config_user_email
clear


echo "Generating a SSH Key"
ssh-keygen -t rsa -b 4096 -C $git_config_user_email
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | xclip -selection clipboard

