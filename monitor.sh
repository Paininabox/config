#!/bin/bash
#Turns off my other monitor during movies or youtube videos, less distraction

monitor=GPU-1.HDMI-0

if [ -z "$(xrandr --verbose | grep 'GPU-1.HDMI-0 connected 1920')" ];then

	xrandr --output $monitor --auto --right-of GPU-0.HDMI-0
        sleep 3
        i3-msg restart
else

	xrandr --output $monitor --off 
        sleep 3
        i3-msg restart

fi
