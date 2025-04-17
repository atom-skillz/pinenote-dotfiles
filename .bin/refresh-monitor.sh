#!/bin/bash
dbus-send --system --print-reply --dest=org.pinenote.ebc /ebc org.pinenote.ebc.TriggerGlobalRefresh
