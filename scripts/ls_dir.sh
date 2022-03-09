#!/bin/bash

if [ ! -z $1 ]; then
	target="$1"
else
	read -p 'Please input the target director: ' target
fi

if [ -d "$target" ]; then
	ls -la $target
else
	echo "Cannot find direcotory $target"
	exit 1
fi

