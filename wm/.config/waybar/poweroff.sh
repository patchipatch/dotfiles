#!/bin/bash
case $(wofi -p "" -di -L 5 -l 3 -W 7% \
    -D dynamic_lines=true << EOF | sed 's/^ *//'
    Cancel
    Shutdown
    Reboot
    Log off
    Lock
EOF
) in
    "Shutdown")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Lock")
        loginctl lock-session
        ;;
    "Log off")
        swaymsg exit
        ;;
esac
