# hidpi stuff
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xrandr --dpi 170/eDP-1
wmname LG3D

# aesthetics
xsetroot -solid "#586e75"

# hotkeys
xbindkeys

# run daemontools to start processes as me
exec svscan ~/.local/services
