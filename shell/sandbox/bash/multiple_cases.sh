#!/usr/bin/env bash

# demonstation of multiple cases matching

read -n 1 -rp "Type a character: "

echo

case "$REPLY" in
	[[:upper:]])	echo "'$REPLY' is upper case." ;;&
	[[:lower:]])	echo "'$REPLY' is lower case." ;;&
	[[:alpha:]])	echo "'$REPLY' is alphabetic." ;;&
	[[:digit:]])	echo "'$REPLY' is a digit." ;;&
	[[:graph:]])	echo "'$REPLY' is a visible character." ;;&
	[[:punct:]])	echo "'$REPLY' is a punctuaction symbol." ;;&
	[[:space:]])	echo "'$REPLY' is a whitespace character." ;;&
	[[:xdigit:]])	echo "'$REPLY' is a hexadecimal digit." ;;&
esac
