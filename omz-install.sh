#!/usr/bin/env bash
set -e

# install packages
sudo -E apt update
sudo -E apt install -y zsh tmux fzf autojump python3-pip i3 i3blocks rofi
pip3 install pyyaml

# Download and install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Save older config files
mv ~/.zshrc ~/.dotfiles/zshrc-old-file

# dotfiles installation
~/.dotfiles/install.sh
