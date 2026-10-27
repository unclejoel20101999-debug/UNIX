#!/usr/bin/env bash

# same as first version, but better
echo -n "Enter an integer number: "
read -r int

if [[ "$int" =~ ^-?[0-9]+$ ]]; then
	if ((int == 0)); then
		echo "int is zero."
	else
		if ((int < 0)); then
			echo "int is negative."
		else
			echo "int is positive."
		fi
		if ((int % 2 == 0)); then
			echo "int is even."
		else
			echo "int is odd."
		fi
	fi
else
	echo "int is not an integer." >&2
	exit 1
fi
