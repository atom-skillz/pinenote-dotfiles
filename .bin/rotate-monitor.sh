#!/bin/bash

case $1 in
    normal)     
        swaymsg output - transform 0    
        swaymsg -- input type:touch calibration_matrix -1 0 1 0 -1 1
    ;;
    bottom-up)  
        swaymsg output - transform 270
        swaymsg -- input type:touch calibration_matrix 0 1 0 -1 0 1
    ;;
    right-up)   
        swaymsg output - transform 270
        swaymsg -- input type:touch calibration_matrix 0 1 0 -1 0 1
    ;;
    left-up)    
        wlr-randr --output DSI-1 --transform normal 
        swaymsg output - transform 270
        swaymsg -- input type:touch calibration_matrix 0 1 0 -1 0 1
    ;;

    *) echo "ERROR: Invalid rotation $1: normal|bottom-up|right-up|left-up" ;;
esac

# Map touchscreen
swaymsg -- input type:table_tool map_to_output "DPI-1"

# Kill keyboard so it doesn't glitch out
pkill wvkbd-mobintl
