#!/bin/sh
coloroutput=$(grim -g "$(slurp -p)" -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:- | tail --lines 1 | awk '{print "RGB: " $2 " Hex: " $3}')
notify-send "Color in #RRGGBB" "$coloroutput"
