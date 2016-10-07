#!/bin/bash
sudo add-apt-repository ppa:pi-rho/dev &&
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - &&
sudo apt-get update &&
sudo apt-get install -y nodejs htop postgresql zsh vim tmux w3m git mosh
