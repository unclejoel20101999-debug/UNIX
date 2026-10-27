#!/usr/bin/env bash

# a menu driven system display using cases

clear

echo "
Please Select:

1. Display System Information
2. Display Disk Usage
3. Display Home Disk Usage
0. Quit
"

read -rp "Enter selection [0-3] > "

case "$REPLY" in
	0)	echo "Program terminated."
		exit
		;;
	1)	echo "Hostname: '$HOSTNAME'"
		uptime
		;;
	2)	df --human-readable
		;;
	3)	if [[ "$(id -u)" -eq 0 ]]; then
			echo  "Home Disk Usage (All Users)"
			du --summarize --human-readable /home/*
		else
			echo "Home Disk Usage ($USER)"
			du --summarize --human-readable "$HOME"
		fi
		;;
	*)	echo "Invalid entry" >&2
		exit 1
		;;
esac
