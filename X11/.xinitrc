# hidpi stuff
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xrandr --dpi 144/eDP-1
wmname LG3D

# aesthetics
source ~/.fehbg
compton -bc --config ~/.compton.conf

# hotkeys
xbindkeys

# run daemontools to start processes as me
exec svscan ~/services
