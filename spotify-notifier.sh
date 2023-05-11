#!/bin/bash

while true

do

    # Get the current song info from Spotify

    metadata=$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'

    # Extract the artist and title from the metadata

    artist=$(echo "$metadata" | grep -A 2 "xesam:artist" | tail -n 1 | cut -d '"' -f 2)

    title=$(echo "$metadata" | grep "xesam:title" | cut -d '"' -f 2)

    # Send a desktop notification with the song info

    notify-send "Now Playing" "$title by $artist"

    

    # Wait for 30 seconds before checking again

    sleep 30
   
done
