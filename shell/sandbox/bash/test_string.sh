#!/usr/bin/bash

# test the string

ANSWER="maybe"

if [ -z "$ANSWER" ]; then
	echo "There is no answer." >&2
	exit 1
fi

if [ "$ANSWER" = "yes" ]; then
	echo "The answer is YES."
elif [ "$ANSWER" = "NO" ]; then
	echo "The answer is NO"
elif [ "$ANSWER" = "maybe" ]; then
	echo "The answer is MAYBE";
else
	echo "The answer is unknown"
fi
