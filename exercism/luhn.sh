#!/usr/bin/env bash

s_inp="$@"

fc="$(echo "$s_inp" | awk '{ print $1 }')"
if [ "${#fc}" -lt 2 ]; then
	echo "false"
	exit 0
fi

regex="^([0-9]{1,} *)*$"
if ! [[ "$s_inp" =~ $regex ]]; then
	echo "false"
	exit 0
fi

inp=($(echo "$s_inp" | tr -d " " | rev | fold -w1))

if [ "${#inp[@]}" -lt 2 ]; then
	echo "false"
	exit 0
fi

for i in "${!inp[@]}"; do
	if [ $((i%2)) -ne 0 ]; then
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


