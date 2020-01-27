xrdb -merge ~/.Xresources
xset b off
xset +dpms
setxkbmap -option ctrl:nocaps

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

picom &

exec i3
