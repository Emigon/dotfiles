# .zshrc
# Author: Daniel Parker

# Prepend path with local programs
export PATH=$HOME/bin:$PATH

# useful for paths like python-project/python_project
HYPHEN_INSENSITIVE="true"

# days between zsh updates
export UPDATE_ZSH_DAYS=13

# enable command auto-correction.
ENABLE_CORRECTION="true"

# oh-my-zsh setup
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# use vim as default editor
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# alpha_vantage (for gatsby)
export ALPHAVANTAGE_API_KEY="TY3LMJOWBXZKD0JM"

# latex install built from source
export TEXMFHOME="~/.texmf"
export PATH=/usr/local/texlive/2018/bin/x86_64-linux:$PATH
export MANPATH=/usr/local/texlive/2018/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2018/texmf-dist/doc/info:$INFOPATH
