#!/usr/bin/env bash

s_inp="$@"
regex="[0-9]{4} [0-9]{4} [0-9]{4} [0-9]{4}"
if ! [[ "$s_inp" =~ $regex ]]; then
	echo "pattern false"
	exit 1
fi

inp=($(echo "$@" | tr -d " " | fold -w1))

for i in "${!inp[@]}"; do
	if [ $((i%2)) -eq 0 ]; then
		let n="${inp[$i]}"
		((nn=n*2))
		if [ $nn -gt 9 ]; then
		       	((nn=nn-9)); 
		fi
		inp[$i]="$nn"
	fi
done

s=0
for n in "${inp[@]}"; do
	((s+=n))
done

[ $((s%2)) -eq 0 ] && echo "true" || echo "false"

