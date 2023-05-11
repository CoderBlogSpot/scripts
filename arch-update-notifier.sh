#!/bin/bash

# Check for updates
checkupdates=$(checkupdates)

# Notify if updates are available
if [[ ! -z "$checkupdates" ]]; then
    notify-send "Arch Linux Updates Available" "$checkupdates"
fi
