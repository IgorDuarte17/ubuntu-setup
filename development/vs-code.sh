#!/bin/bash

# Install VS Code

echo 'installing VS Code'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install code -y 


# Install Extensions
echo 'installing extensions'

# PHP
code --install-extension felixfbecker.php-debug
code --install-extension felixfbecker.php-intellisense
code --install-extension neilbrayfield.php-docblocker
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension mehedidracula.php-namespace-resolver
code --install-extension m1guelpf.better-pest

# Laravel
code --install-extension amiralizadeh9480.laravel-extra-intellisense
code --install-extension onecentlin.laravel-blade
code --install-extension onecentlin.laravel5-snippets
code --install-extension ryannaddy.laravel-artisan
code --install-extension codingyu.laravel-goto-view
code --install-extension stef-k.laravel-goto-controller
code --install-extension naoray.laravel-goto-components
code --install-extension onecentlin.laravel-extension-pack

# Tools
code --install-extension mikestead.dotenv
code --install-extension editorconfig.editorconfig
code --install-extension foxundermoon.shell-format
code --install-extension yzhang.markdown-all-in-one
code --install-extension eamodio.gitlens
code --install-extension ms-azuretools.vscode-docker
code --install-extension humao.rest-client
code --install-extension alefragnani.bookmarks
code --install-extension gruntfuggly.todo-tree
code --install-extension wayou.vscode-todo-highlight
code --install-extension coenraads.bracket-pair-colorizer-2

# Front e JS
code --install-extension formulahendry.auto-close-tag
code --install-extension christian-kohler.path-intellisense
code --install-extension naumovs.color-highlight
code --install-extension dbaeumer.vscode-eslint
code --install-extension xabikos.javascriptsnippets
code --install-extension octref.vetur
