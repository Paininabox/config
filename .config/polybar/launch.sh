#!/usr/bin/env sh

#Terminate running bar instances
killall -q polybar

#Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

#Launch bars
MONITOR=DVI-I-1 polybar bar &

MONITOR=HDMI-0 polybar bar &

echo "Bars launched"
