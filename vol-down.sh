#!/bin/bash

/usr/bin/amixer -qM set Master 5%- umute
#pactl set-sink-volume @DEFAULT_SINK@ -5%
notify-send 当前音量：$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")% -t 500
bash ~/scripts/dwm-status-refresh.sh
