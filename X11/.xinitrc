slstatus 2>&1 > /dev/null &
thd --triggers /etc/triggerhappy/triggers.d/ /dev/input/event* &

xautolock -time 15 -locker slock &

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xrandr --dpi 144/eDP-1
wmname LG3D

feh --bg-fill ~/wallpapers/ghost_in_the_shell.jpg
compton &

exec dwm
