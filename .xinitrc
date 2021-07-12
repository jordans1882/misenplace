xrdb ~/.Xresources
xset r rate 200 60

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xcape -t 200 -e 'Control_L=Escape'
xcape -t 200 -e 'Hyper_L=Escape'

feh --bg-scale $HOME/.config/awesome/themes/smurf/wall.png &

# xcompmgr &
# compton &

picom &

exec awesome
# exec stumpwm
# exec i3
