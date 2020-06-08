# Install ZSH

echo 'installing zsh' 
sudo apt install zsh


# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Config ZSH - Manual
vim ~/.zshrc

	ZSH_THEME="avit
	# Commands Alias
	alias -g cls="clear"


Reebot System

# Check ZSH
Please run echo $SHELL from a new terminal to confirm.
Expected result: /usr/bin/zsh or similar
