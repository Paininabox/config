#!/usr/bin/env sh

#Terminate running bar instances
killall -q polybar

#Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

#Launch bars
MONITOR=GPU-0.HDMI-0 polybar bar &

MONITOR=GPU-1.HDMI-0 polybar bar &

echo "Bars launched"
