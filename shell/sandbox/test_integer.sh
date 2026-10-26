#!/usr/bin/env bash

# test the integer

INTEGER=-12

if [ -z "$INTEGER" ]; then
	echo "INTEGER is empty." >&2
	exit 1
fi

if [ "$INTEGER" -eq 0 ]; then
	echo "$INTEGER is zero."
else
	if [ "$INTEGER" -lt 0 ]; then
		echo "INTEGER is negative"
	else
		echo "INTEGER is positive."
	fi
	if [ $((INTEGER % 2)) -eq 0 ]; then
		echo "INTEGER is even."
	else 
		echo "INTEGER is odd."
	fi
fi
