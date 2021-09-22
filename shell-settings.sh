# set vim as the default editor
export EDITOR=/usr/bin/vim

# initiate autojump 
. /usr/share/autojump/autojump.sh

# login with tmux
if [[ -z "$TMUX"  ]] && [ "$SSH_CONNECTION" != ""  ]; then
   tmux attach || tmux new
fi
