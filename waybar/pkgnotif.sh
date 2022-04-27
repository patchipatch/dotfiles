#!/bin/sh
pkglist=$(dnf check-update | grep "updates" | awk '{print $1}' | sed "s/\..*/ (dnf)/g")
flatlist=$(flatpak remote-ls --updates --columns=name | tail -n+1 | awk '{print $1}' | sed "s/$/ (flatpak)/g")

if ! pkgnum=$(dnf check-update 2> /dev/null | grep "updates" | wc -l); then
	pkgnum=0
fi

if ! flatnum=$(flatpak remote-ls --updates 2> /dev/null| tail -n+1 | wc -l); then
	flatnum=0
fi

updates=$((pkgnum + flatnum))

if [ "$updates" -gt 0 ]; then
	info="$pkglist\n$flatlist"
else
	info="No packages to update! :)"
fi

notify-send " Packages to update:" "$info"
