#!/bin/bash

RANDOM=$(date +%s)
GUESS_ME=$(( ($RANDOM - 1) / 327 ))

until [[ $guess == $GUESS_ME ]]; do
	read -n 3 -e -p 'Please pick a number between (1-100): ' guess
	if ! [[ $guess =~ ^[0-9]+$ ]]; then
		echo 'Please pick an integet'
		continue
	fi

	[[ $guess -gt $GUESS_ME ]] && echo 'Pick an smaller number!'
	[[ $guess -lt $GUESS_ME ]] && echo 'Pick a bigger number!' 
done

echo 'You guessed it correctly.'

