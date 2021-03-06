#!/bin/bash

state="$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | sed -ne 's/\s*state:\s*\(\w*\)/\1/p')"

if [ $state = 'charging' ]; then
	exit
fi

percentage="$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | sed -ne 's/\s*percentage:\s*\(\w*\)%/\1/p')"

if (( $percentage <= 10 )); then
	notify-send "Help, I'm dying! Plug me in!" $percentage"%"
fi