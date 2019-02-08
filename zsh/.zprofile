if [[ -f ~/.zshrc ]] ; then
	. ~/.zshrc
fi

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [[ ! $DISPLAY && $(tty) == /dev/tty1 ]]; then
	exec startx
fi
