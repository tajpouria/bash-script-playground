#!/bin/bash

read -n 3 -e -p  'Input a 3 digits number: ' inp

! [[ $inp =~ ^[0-9]+$ ]] && echo 'Please pick an integet' && source $0

case $inp in
	100)
		echo 'You picked 100'
	;;
	200)
		echo 'You picked 200'
	;;
	300 | 400)
		echo 'You picked either 300 or 400'
	;;
	500 | 600 | 700)
		echo 'You picked one of the 500, 600 or 700' 
	;;
	*) 
		echo 'You picked something other number'
	;;
esac

