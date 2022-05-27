#!/usr/bin/env bash

# see man zscroll for documentation of the following parameters
zscroll --delay 0.3 \
        --match-command "playerctl metadata -p spotify --format '{{status}}'" \
	--match-text "Playing" "--before-text ' '" \
	--match-text "Paused" "--before-text ' '" \
        --update-check true "playerctl metadata --player=spotify --format '{{artist}} - {{title}}'" &
wait
