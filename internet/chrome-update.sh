#!/bin/bash

# Update Chrome
echo 'Updating Chrome'

sudo apt-get update

sudo apt-get --only-upgrade install google-chrome-stable
