 
#!/bin/bash

# Install Chrome
echo 'installing Chrome' 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
clear

# Install Extensions
echo 'installing extensions'

install_chrome_extension "gighmmpiobklfepjocnamgkkbiglidom" "AdBlock"
install_chrome_extension "jlmpjdjjbgclbocgajdjefcidcncaied" "Daily 2.0"
install_chrome_extension "bhlhnicpbhignbdhedgjhgdocnmhomnp" "ColorZilla"
install_chrome_extension "jabopobgcpjmedljpbcaablpmlmfcogm" "WhatFont"
install_chrome_extension "aapbdbdomjkkjkaonfhkkikfgjllcleb" "Google Tradutor"


# Developer Extensions
install_chrome_extension "odkdlljoangmamjilkamahebpkgpeacp" "GitHub Dark Theme"
install_chrome_extension "bcjindcccaagfpapjjmafapmmgkkhgoa" "JSON Formatter"
install_chrome_extension "bnjjngeaknajbdcgpfkgnonkmififhfo" "Fake Filler"
install_chrome_extension "nhdogjmejiglipccpnnnanhbledajbpd" "Vue.js devtools"
