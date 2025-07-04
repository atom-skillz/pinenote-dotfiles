#!/bin/bash

if pgrep wvkbd-mobintl; then
    pkill wvkbd-mobintl
else
    wvkbd-mobintl &
fi
