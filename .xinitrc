xrdb -merge ~/.Xresources
xset b off
xset +dpms
setxkbmap -option ctrl:nocaps
nitrogen --restore
compton --backend glx &

exec i3
