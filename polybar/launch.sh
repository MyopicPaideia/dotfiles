#!/usr/bin/bash

## IF DP-2 is connected THEN launch [bar/EXTERNAL] ELSE launch [bar/LAPTOP] ##
echo "---" | tee -a /tmp/polybar1.log
if [ -n "$(xrandr --query | grep 'DP-2 connected')" ]; then
	polybar EXTERNAL >>/tmp/polybar1.log 2>&1 &
else
	polybar LAPTOP >>/tmp/polybar2.log 2>&1 &
fi
