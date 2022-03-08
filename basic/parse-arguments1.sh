#!/bin/bash

foo=${foo:-"default"}
bar=${bar:-"default"}

for i in `seq $#`;do
	if [[ $1 =~ ^--.*$ ]]; then
		param="${1/--/}"
		declare $param="$2"
	fi
	shift
done

echo "foo $foo bar $bar"

