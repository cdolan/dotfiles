source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xrdb -merge ~/.Xresources
xset b off
xset +dpms
setxkbmap -option ctrl:nocaps
nitrogen --restore
compton &

exec i3
