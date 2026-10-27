#!/usr/bin/env bash

DELAY=3


while [[ "$REPLY" != 0 ]]; do
	clear
	cat <<- _EOF_
	Please Select:

	1. Display System Information
	2. Display Disk Usage
	3. Dispaly Home Disk Usage
	0. Quit
	_EOF_
	read -rp "Enter selection [0-3] > "

	if [[ "$REPLY" =~ ^[0-3]$ ]]; then
		if [[ "$REPLY" == 0 ]]; then
			break
		fi
		if [[ "$REPLY" == 1 ]]; then
			echo "Hostname: '$HOSTNAME'"
			uptime
			sleep "$DELAY"
			continue
		fi
		if [[ "$REPLY" == 2 ]]; then
			df --human-readable
			sleep "$DELAY"
			continue
		fi
		if [[ "$REPLY" == 3 ]]; then
			if [[ "$(id -u)" -eq 0 ]]; then
				echo "Home Disk Usage (All Users)"
				du --summarize --human-readable /home/*
			else
				echo "Home Disk Usage ($USER)"
				du -s --human-readable "$HOME"
			fi
			sleep "$DELAY"
			continue
		fi
	else
		echo "Invalid entry." >&2
		sleep "$DELAY"
	fi
done
