#!/bin/bash
while [ True ]; do
	wmfs -c status "status ^s[right;GRAY;$(fuztime) ]";
	sleep 60;
done
