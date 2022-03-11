#!/bin/bash

if [[ -z $GUESS_ME ]]; then
	RANDOM=488
	GUESS_ME=$(( ($RANDOM + 1 ) / 327 ))
fi

read -p "Please guess a number between (1-100): " guess

if ! [[ $guess =~ ^[0-9]+$ ]]; then
	echo 'Please input an integer!'
	source $0
fi

if [[ $guess -eq $GUESS_ME ]]; then
	echo "You guess was correct!"
	echo "Play another round"
	GUESS_ME=
fi

if [[ $guess -gt $GUESS_ME ]]; then
	echo 'Please pick a smaller number'
	source $0
else
	echo 'Please pick a bigger number'
	source $0
fi

