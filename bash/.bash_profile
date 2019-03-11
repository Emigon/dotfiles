# ~dp/.bash_profile

if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

if [[ ! $DISPLAY && $(tty) == /dev/tty1 ]]; then
	exec startx
fi
