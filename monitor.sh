#!/bin/bash
#Turns off my other monitor during movies or youtube videos, less distraction

monitor=DVI-I-1

if [ -z "$(xrandr --verbose | grep 'DVI-I-1 connected 1440')" ];then

	xrandr --output $monitor --auto && xrandr --output HDMI-0 --left-of $monitor && xset +dpms
        sleep 3
        i3-msg restart
else

	xrandr --output $monitor --off && xset -dpms && xset s 0
        sleep 3
        i3-msg restart

fi
