#!/bin/bash
case $(fuzzel -d -l 5 --layer overlay << EOF | sed 's/^ *//'
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
        riverctl exit
        ;;
esac
