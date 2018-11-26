# dwm status bar
slstatus 2>&1 > /dev/null &

# hidpi stuff
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xrandr --dpi 144/eDP-1
wmname LG3D

# aesthetics
feh --bg-fill ~/wallpapers/ghost_in_the_shell.jpg
compton &

# hotkeys
xbindkeys

exec dwm
