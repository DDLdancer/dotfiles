#!/bin/bash

# install packages
sudo apt-get install git
sudo apt-get install zsh 
sudo apt-get install tmux 
sudo apt-get install fzf

# Download and install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Download zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Download vim plugins
# gruvbox vim colortheme
# git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox

# dotfiles installation
mv ~/.bashrc bashrc-old-file
rm ~/.zshrc
~/.dotfiles/install
