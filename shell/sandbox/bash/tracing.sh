#!/usr/bin/env bash

# tracing demonstration

number=1

set -x # tracing on

if [[ "$number" == 1 ]]; then
	echo "Number is equal to 1."
else
	echo "Number is not equal to 1."
fi
set +x # tracing off
