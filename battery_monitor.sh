#!/bin/bash

X=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percent | awk '{print $2}' | cut -d'%' -f1)

if [ $X -lt 10 ]
then
	notify-send "Oh no! Your battery is dying!"\
				$X"%"
fi

# evaluate $X > 10 
# if true 
# notify-send


