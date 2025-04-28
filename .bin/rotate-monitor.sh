#!/bin/bash
declare -i nt=$1

if [[ -z $1 ]]; then
    declare -i t=$(hyprctl monitors DPI-1 | grep transform | cut -d " " -f 2)
    declare -i nt=(t+1)%4
fi
declare -i tt=(nt+2)%4

echo transform $nt $tt
hyprctl keyword monitor DPI-1,transform,$nt
hyprctl keyword input:touchdevice:transform $tt
