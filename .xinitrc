#!/bin/bash

#setup display
xrandr --output HDMI-0 --mode 1920x1080
xrandr --output HDMI-0 --primary
xrandr --dpi 80

#key repeat rate
xset r rate 200 30

#screensaver off
xset s off -dpms

#setup desktop environment
compton \
  --blur-background \
  --blur-method kawase \
  --blur-strength 5 \
  --backend glx \
  --glx-no-rebind-pixmap &
feh --bg-fill ~/pictures/wallpapers/active
polybar saturn &
exec i3
