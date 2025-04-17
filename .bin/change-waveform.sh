#!/bin/bash
dbus-send --system --print-reply --dest=org.pinenote.ebc /ebc org.pinenote.ebc.GetDefaultWaveform
dbus-send --system --print-reply --dest=org.pinenote.ebc /ebc org.pinenote.ebc.SetDefaultWaveform byte:$1
