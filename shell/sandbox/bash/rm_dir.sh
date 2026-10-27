#!/usr/bin/env bash

# demonstration of safe code

if [[ -d "$dir_name"  ]]; then
	if cd "$dir_name"; then
		echo rm * # TESTING
	else
		echo "Cannot cd to the '$dir_name'" >&2
	fi
else
	echo "No such directory: '$dir_name'" >&2
	exit 1
fi
exit # TESTING
