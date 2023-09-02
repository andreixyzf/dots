#!/bin/sh

# This file runs automatically with startx.
XDOTDIR='$HOME'

# Programs that should start by default:
slstatus & # Loads my status bar.
xcompmgr & # Compositing manager for transparency effects.
remap & # Remaping.
setwal & # Set wallpaper and color scheme:
transmission-daemon & # Transmision for torrents.
unclutter -idle 3 & # Hides mouse cursor after 3 seconds.
xrdb $XDOTDIR/.Xresources & # Load Xresources file.

# Start dwm:
exec dwm > ~/.cache/dwm
