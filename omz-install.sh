#!/usr/bin/env bash
set -e

# install packages
sudo -E apt update
sudo -E apt install git zsh tmux fzf autojump python3-pip
pip3 install pyyaml

# Download and install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# dotfiles installation
mv ~/.bashrc bashrc-old-file
mv ~/.zshrc zshrc-old-file
~/.dotfiles/install.sh
