# set vim as the default editor
export EDITOR=/usr/bin/vim

# login with tmux
if [[ -z "$TMUX"  ]] && [ "$SSH_CONNECTION" != ""  ]; then
   tmux attach || tmux new
fi
