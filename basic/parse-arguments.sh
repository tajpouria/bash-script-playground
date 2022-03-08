#!/bin/bash

foo=${foo}
bar=${bar}

while [ $# -gt 0 ]; do
	if [[ $1 == *'--'* ]]; then
		param="${1/--/}"
		declare $param="$2"
	fi

	shift
done

echo $foo
echo $bar

