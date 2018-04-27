#!/bin/bash
# My first script
#hp=alsa_output.pci-0000_07_00.0.analog-surround-51
hp=alsa_output.pci-0000_07_00.0.analog-stereo
#echo "Setting default sink to: $1";
pacmd set-default-sink $hp
pacmd list-sink-inputs | grep index | while read line
do
#echo "Moving input: ";
#echo $line | cut -f2 -d' ';
#echo "to sink: $1";
pacmd move-sink-input `echo $line | cut -f2 -d' '` $hp 
done
