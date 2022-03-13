#!/bin/bash

inp="$*"

case "${inp,,}" in
	'hi alexa') echo 'Hi';;
	'how are you' | 'whatsup')
		echo 'All good, thanks for easking :)'
	;;
	*) 
		echo "Sorry, I'm not sure how should I respond to that" 
	;; 
esac

