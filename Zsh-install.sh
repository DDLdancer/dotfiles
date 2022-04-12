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

# Download zsh plugins
git clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
git clone "https://github.com/zsh-users/zsh-autosuggestions" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

# Download vim plugins
git clone "https://github.com/morhetz/gruvbox.git" "$HOME/.vim/pack/default/start/gruvbox"
git clone "https://github.com/preservim/nerdtree.git" "$HOME/.vim/pack/default/start/nerdtree"
git clone "https://github.com/Xuyuanp/nerdtree-git-plugin.git" "$HOME/.vim/pack/default/start/nerdtree-git-plugin"
git clone "https://github.com/airblade/vim-gitgutter.git" "$HOME/.vim/pack/default/start/vim-gitgutter"
git clone --depth 1 "https://github.com/ctrlpvim/ctrlp.vim.git" "$HOME/.vim/pack/plugins/start/ctrlp.vim"
git clone --depth 1 "https://github.com/sheerun/vim-polyglot.git" "$HOME/.vim/pack/plugins/start/vim-polyglot"

# dotfiles installation
mv ~/.bashrc bashrc-old-file
rm ~/.zshrc
~/.dotfiles/install
