#!/usr/bin/env bash

# a menu driven system display

clear

echo "
Please Select:

1. Display System Information
2. Display Disk Usage
3. Display Home Disk Usage
0. Quit
"

read -rp "Enter selection [0-3] > "

if [[ "$REPLY" =~ ^[0-3]$ ]]; then
	if [[ "$REPLY" == 0 ]]; then
		echo "Program terminated."
		exit
	fi
	if [[ "$REPLY" == 1 ]]; then
		echo "Hostname: '$HOSTNAME'"
		uptime
		exit
	fi
	if [[ "$REPLY" == 2 ]]; then
		df --human-readable
		exit
	fi
	if [[ "$REPLY" == 3 ]]; then
		if [[ "$(id -u)" -eq 0 ]]; then
			echo "Home Disk Usage (All Users)"
			du -s --human-readable /home/*
		else
			echo "Home Disk Usage ($USER)"
			du -s --human-readable "$HOME"
		fi
		exit
	fi
else
	echo "Invalid entry." >&2
	exit 1
fi
