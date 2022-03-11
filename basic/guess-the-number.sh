#!/bin/bash

tar="$RANDOM"

while [[ $guess -ne $tar ]]; do
	read -p "please input your guess: " guess

	
	# DO NOT wrap the regex inside quote
	if ! [[ $guess =~ ^[0-9]+$ ]]; then 
		echo 'Please pick an integer!'
		continue
	fi

	if [[ $guess -gt $tar ]]; then
		echo 'Pick a smaller number!'
	elif [[ $guess -lt $tar ]]; then
		echo 'pick a bigger number'
	fi
done

echo 'Your guess was correct!'

