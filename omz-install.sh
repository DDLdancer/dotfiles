#!/usr/bin/env bash
set -e

# install packages
sudo apt-get install git
sudo apt-get install zsh 
sudo apt-get install tmux 
sudo apt-get install fzf
sudo apt-get install python-pip
sudo apt-get install autojump
sudo apt-get install shellcheck
pip install pyyaml

# Download and install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# dotfiles installation
mv ~/.bashrc bashrc-old-file
rm ~/.zshrc
~/.dotfiles/install.sh
