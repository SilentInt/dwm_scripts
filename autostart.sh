#!/bin/bash

xrandr --auto --output DP-2 --same-as eDP-1 --size 1920x1080
xrandr --auto --output HDMI-1  --right-of DP-2 --size 1920x1080
/bin/bash ~/scripts/dwm-status.sh &
/bin/bash ~/scripts/wp-autochange.sh &
picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
/bin/bash ~/scripts/tap-to-click.sh &
/bin/bash ~/scripts/inverse-scroll.sh &
/bin/bash ~/scripts/setxmodmap-colemak.sh &
nm-applet &
xfce4-power-manager &
xfce4-volumed-pulse &
/bin/bash ~/scripts/run-mailsync.sh &
~/scripts/autostart_wait.sh &
