# .bashrc | dp

# use vim as default editor and enable keybindings in bash
export EDITOR='vim'
export SUDO_EDITOR=$EDITOR
set -o vi

# search forward and backward in history based on what has already been typed
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# alpha_vantage (for gatsby)
export ALPHAVANTAGE_API_KEY="TY3LMJOWBXZKD0JM"

# prepend path with local programs
export PATH=$HOME/.local/bin:$PATH

# PS1
PROMPT_COMMAND=prompt_command
prompt_command() {
    local EXIT="$?"
    # abbreviate pwd fish style
    local REGEX="s|^$HOME|~|;s|([^/])[^/]*/|$""1/|g"
    local PWD_ABBRV=$(echo "$PWD" | perl -pl0 -e "$REGEX" | tr -d '\0')

    local RCol='\[\e[0m\]'
    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'
    local BYel='\[\e[1;33m\]'
    local BBlu='\[\e[1;34m\]'
    local Pur='\[\e[0;35m\]'

    if [ $EXIT != 0 ]; then
        PS1="[ ${Red}\u${RCol} | $PWD_ABBRV ] $ " # Add red if exit code non 0
    else
        PS1="[ ${Gre}\u${RCol} | $PWD_ABBRV ] $ "
    fi
}
