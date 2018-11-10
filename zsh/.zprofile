if [[ -f ~/.zshrc ]] ; then
	. ~/.zshrc
fi

if [[ ! $DISPLAY && $(tty) == /dev/tty1 ]]; then
	exec startx
fi
