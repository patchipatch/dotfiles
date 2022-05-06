#!/bin/sh
player_status=$(playerctl metadata -p spotify --format '{{status}}')
if [ "$player_status" = "Playing" ]; then
    echo " $(playerctl metadata --player=spotify --format '{{artist}} - {{title}}')"
elif [ "$player_status" = "Paused" ]; then
    echo " $(playerctl metadata --player=spotify --format '{{artist}} - {{title}}')"
fi
