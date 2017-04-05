#!/bin/bash
bat(){
	echo $(cat /sys/class/power_supply/BAT0/capacity)
}
#^p[right;8;12;0;$(bat);100;#000000;#BBBBBB]
while [ True ]; do
	wmfs -c status "status ^s[right;#BBBBBB;bat: $(bat)%   ] ^s[right;#BBBBBB;|   $(fuztime) ]  ";
	sleep 60;
done
