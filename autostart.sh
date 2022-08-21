#!/bin/bash

/bin/bash ~/scripts/dwm-status.sh &
/bin/bash ~/scripts/wp-autochange.sh &
#picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b&
#picom -b
picom --config ~/.config/picom/picom.conf --experimental-backends -b &
/bin/bash ~/scripts/tap-to-click.sh &
/bin/bash ~/scripts/inverse-scroll.sh &
#xmodmap ~/.Xmodmap &
dunst &
nm-applet &
xfce4-power-manager &
fcitx5 &
wmname LG3D&
~/scripts/autostart_wait.sh
