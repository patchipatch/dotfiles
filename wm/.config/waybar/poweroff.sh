#!/bin/bash
case $(wofi --show dmenu -L 7 -l 1 -W 10% << EOF | sed 's/^ *//'
    󰜺 Cancel
     Shutdown
     Reboot
    󰗼 Log off
     Lock
EOF
) in
    " Shutdown")
        poweroff
        ;;
    " Reboot")
        reboot
        ;;
    " Lock")
        loginctl lock-session
        ;;
    "󰗼 Log off")
        hyprctl dispatch exit
        ;;
esac
