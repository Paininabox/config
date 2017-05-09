#!/bin/bash
# My first script

#!/bin/bash
#echo "Setting default sink to: $1";
pacmd set-default-sink alsa_output.pci-0000_00_1b.0.analog-stereo
pacmd set-sink-port alsa_output.pci-0000_00_1b.0.analog-stereo analog-output-headphones
pacmd list-sink-inputs | grep index | while read line
do
#echo "Moving input: ";
#echo $line | cut -f2 -d' ';
#echo "to sink: $1";
pacmd move-sink-input `echo $line | cut -f2 -d' '` alsa_output.pci-0000_00_1b.0.analog-stereo 

done
