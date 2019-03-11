# ~dp/.bashrc

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

# latex installation
export TEXMFHOME="~/.texmf"
export PATH=/usr/local/texlive/2018/bin/x86_64-linux:$PATH
export MANPATH=/usr/local/texlive/2018/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2018/texmf-dist/doc/info:$INFOPATH

# prepend path with local programs
export PATH=$HOME/.local/bin:$PATH

# argcomplete explicit registration for pubs
eval "$(register-python-argcomplete pubs)"
