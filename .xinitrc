#!/bin/bash
xrandr --output DVI-I-1 --mode 1280x1024
xrandr --output HDMI-0 --mode 1920x1080
xrandr --output DVI-D-0 --mode 1280x1024

xrandr --output DVI-I-1 --left-of HDMI-0
xrandr --output DVI-D-0 --right-of HDMI-0
xrandr --output HDMI-0 --primary

#key repeat rate
xset r rate 200 30

#screensaver off
xset s off -dpms

feh --bg-fill ~/pictures/wallpapers/active

xrandr --dpi 80
exec i3
