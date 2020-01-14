#!/bin/bash

#setup display
xrandr --output HDMI-0 --mode 1920x1080
xrandr --output HDMI-0 --primary
xrandr --output DVI-I-1 --mode 1280x1024 --right-of HDMI-0
xrandr --dpi 100

#set cursor for windowless areas
xsetroot -cursor_name left_ptr

#key repeat rate
xset r rate 200 30

#screensaver off
xset s off -dpms

# map wacom to primary display only
# xsetwacom --list devices
xsetwacom --set 14 MapToOutput 1920x1080+0+0
xsetwacom --set 15 MapToOutput 1920x1080+0+0
xsetwacom --set 16 MapToOutput 1920x1080+0+0
xsetwacom --set 19 MapToOutput 1920x1080+0+0
xsetwacom --set 20 MapToOutput 1920x1080+0+0

#setup desktop environment
feh --bg-fill ~/pictures/wallpapers/active
polybar saturn &
exec i3

