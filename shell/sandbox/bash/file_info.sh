#!/usr/bin/env bash

# display file info using the positional arguments


file_info () {
	if [[ -e "$1" ]]; then
		echo -e "\nFile Type:"
		file "$1"
		echo -e "\nFile Status:"
		stat "$1"
	else
		echo "$FUNCNAME: usage: $FUNCNAME file" >&2
		exit 1
	fi
}
