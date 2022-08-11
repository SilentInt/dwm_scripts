#!/bin/bash

/usr/bin/amixer set Master toggle
notify-send 当前音量状态：$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)\].*/\1/") -t 1000
bash ~/scripts/dwm-status-refresh.sh
