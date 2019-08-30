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

# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
