#!/bin/sh
pkglist=$(dnf check-update | grep "updates" | awk '{print $1}' | sed "s/.x86_64//g")
flatlist=$(flatpak remote-ls --updates --columns=name | tail -n+1)

if ! pkgnum=$(dnf check-update 2> /dev/null | grep "updates" | wc -l); then
	pkgnum=0
fi

if ! flatnum=$(flatpak remote-ls --updates 2> /dev/null| tail -n+1 | wc -l); then
	flatnum=0
fi

updates=$((pkgnum + flatnum))

if [ "$updates" -gt 0 ]; then
	echo "$updates pkgs to update!"
else
	echo "Up to date!"
fi

