#!/bin/bash
if [[ -z $1 ]]; then
    echo "Disabling travel mode"
    dbus-send --system --print-reply --dest=org.pinenote.misc /misc org.pinenote.misc.DisableTravelMode
else
    echo "Enabling travel mode"
    dbus-send --system --print-reply --dest=org.pinenote.misc /misc org.pinenote.misc.EnableTravelMode
fi
