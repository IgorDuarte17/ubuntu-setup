 #!/bin/bash

# Install ZSH
echo 'installing zsh' 
sudo apt install zsh


# Install Oh My Zsh
echo 'installing Oh My zsh' 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh


# Configure Theme
echo 'Configuring Theme'
sed -i 's/.*ZSH_THEME=.*/ZSH_THEME="avit"/g' ~/.zshrc


# Install zsh-Autosuggestions
echo 'installing autosuggestions' 
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
source ~/.zshrc


# Config ZSH - Manual
# vim ~/.zshrc
# Commands Alias
# alias -g cls="clear"


# Reebot System
# Check ZSH
#P lease run echo $SHELL from a new terminal to confirm.
# Expected result: /usr/bin/zsh or similar
