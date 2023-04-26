#!/bin/bash

# Install NVM

echo 'installing NVM' 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Export NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Check Version
nvm --version
clear


# Install Node
echo 'installing Node' 
nvm install node

echo 'install Specific Node Version'
nvm install $version #Exe: 14.20.0

echo 'use Specific Node Version'
nvm use $version #Exe: 14.20.0

# Check Version
node --version
