#!/usr/bin/env bash
set -e

# install packages
sudo apt update
sudo apt install git
sudo apt install zsh 
sudo apt install tmux 
sudo apt install fzf
sudo apt install python-pip
sudo apt install autojump
sudo apt install shellcheck
pip install pyyaml

# Download and install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# dotfiles installation
mv ~/.bashrc bashrc-old-file
rm ~/.zshrc
~/.dotfiles/install.sh
