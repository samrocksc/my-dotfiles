#!/bin/bash
sudo apt-get install curl &&
sudo add-apt-repository ppa:pi-rho/dev &&
sudo add-apt-repository ppa:neovim-ppa/stable &&
sudo apt-get update &&
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - &&
sudo apt-get update &&
sudo apt-get install -y nodejs node-gyp bcrypt htop postgresql newsbeuter zsh vim tmux w3m git mosh nginx software-properties-common python-dev python-pip python3-dev python3-pip
sudo apt-get install neovim
