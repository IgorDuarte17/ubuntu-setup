#!/bin/bash

# Install and Configure Python
sudo apt update
sudo apt install python3

# check the installation by running
python3 --version

# install dependency manager
sudo apt install python3-pip

# install Flask Server
pip install Flask
