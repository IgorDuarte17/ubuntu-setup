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
echo "enter the name of the theme you want to use"
echo "For example, mine will be \"avit\""
read theme_name
sed -i 's/.*ZSH_THEME=.*/ZSH_THEME='$theme_name'/g' ~/.zshrc
echo "Theme configured, please after finish installation, restart the terminal"


# Configure Alias
echo 'Configuring Alias'
cat >> ~/.zshrc <<EOF
# space

# Commands Alias
alias cls="clear"
alias cdp="cd $HOME/projects"
EOF


# Install Plugins
echo 'installing zsh-autosuggestions' 
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
source ~/.zshrc

echo 'installing zsh-syntax-highlighting' 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
source ~/.zshrc


# vim ~/.zshrc

# Reebot System

# Check ZSH
#Please run echo $SHELL from a new terminal to confirm.
# Expected result: /usr/bin/zsh or similar
