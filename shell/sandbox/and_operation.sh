#!/usr/bin/env bash

# determine if an integer is within a
# specified range of values

MIN_VAL=1
MAX_VAL=100

INT=64

if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
	if [[ "$INT" -ge "$MIN_VAL" && "$INT" -le "$MAX_VAL" ]]; then
		echo "$INT is within $MIN_VAL and $MAX_VAL range."
	else
		echo "$INT is out of range."
	fi
else
	echo "INT is not an integer." >&2
	exit 1
fi
