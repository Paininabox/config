#!/bin/bash

monitor=DVI-I-1

if [ -z "$(xrandr --verbose | grep 'DVI-I-1 connected 1440')" ];then

	xrandr --output $monitor --auto && xrandr --output HDMI-0 --left-of $monitor && xset +dpms
else

	xrandr --output $monitor --off && xset -dpms

fi
