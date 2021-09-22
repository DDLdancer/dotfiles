#!/bin/bash

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

# Download zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/sheerun/vim-polyglot ~/.vim/pack/plugins/start/vim-polyglot

# Download vim plugins
# gruvbox vim colortheme
# git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox
git clone https://github.com/ctrlpvim/ctrlp.vim.git .vim/pack/default/start/ctrlp.vim
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/default/start/nerdtree

# dotfiles installation
mv ~/.bashrc bashrc-old-file
rm ~/.zshrc
~/.dotfiles/install
