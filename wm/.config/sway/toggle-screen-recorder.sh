#!/bin/bash 

pid=`pgrep wf-recorder`
status=$?

if [ $status != 0 ] 
then 
  wf-recorder -a -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') --file=$(xdg-user-dir VIDEOS)/recordings/$(date +'%Y%m%d_%Hh%Mm%Ss_vid.mp4') 
else 
  pkill --signal SIGINT wf-recorder
fi
