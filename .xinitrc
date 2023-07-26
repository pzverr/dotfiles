#!/bin/sh

# /etc/X11/xinit/xinitrc

setxkbmap -model pc104 -layout us,ru -option grp:alt_shift_toggle

# exec dbus-launch --exit-with-session /usr/bin/i3
exec i3

