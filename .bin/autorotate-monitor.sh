#!/bin/bash

monitor-sensor | gawk -W interactive '/Accelerometer orientation changed:/ { print $NF; fflush(); }' | while read -r line
do
    rotate-monitor.sh $line
done
