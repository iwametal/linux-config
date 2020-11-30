#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# keyboard layout
setxbmap ch &

# compositor
picom -f &

# wallpaper
feh --bg-fill ~/wallpaper/wall.png &

# setting some keuboard actions
./.scripts/dwm/keyboard_actions.sh

# DWM status
dwmstatus 2>&1 >/dev/null &

# loop
#while true; do
	#dwm >/dev/null 2>&1
#done

# status bar
./.scripts/dwm/dwm_statusbar.sh &

# start st
./.scripts/dwm/startst

# execute DWM
exec dwm
