#!/bin/bash

e=''
while read l; do
  e="$e $l"
done < forn.txt
echo $e

echo "Second Way Around"

cat forn.txt | while read l; do
	echo "Line:: $l"
done

