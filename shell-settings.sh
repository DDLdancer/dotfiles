#set vim as the default editor
export EDITOR=/usr/bin/vim

# start tmux
if [[ -z "$TMUX"  ]] && [ "$SSH_CONNECTION" != ""  ]; then
   tmux attach || tmux new
fi

#PATH settings
export PATH="$PATH:/home/admin/.local/bin"
