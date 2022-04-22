#!/bin/bash

e=''
while read l; do
  e="$e $l"
done < forn.txt

echo $e
