#!/bin/bash
declare -i nt=$1

if [[ -z $1 ]]; then
    declare -i t=$(hyprctl monitors DPI-1 | grep transform | cut -d " " -f 2)
    declare -i nt=(t+1)%4
fi

echo transform $nt
hyprctl keyword monitor DPI-1,transform,$nt
