#!/bin/sh
player_status=$(playerctl metadata -p spotify --format '{{status}}')
play=$(playerctl metadata --player=spotify --format '{{artist}} - {{title}}')
if [ "$player_status" = "Playing" ]; then
    echo " $play"
elif [ "$player_status" = "Paused" ]; then
    echo " $play"
fi
