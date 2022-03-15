#!/bin/bash

echo $0
echo $1
echo $2
echo "$*" 
for i in "$*"; do
	echo "<$i>"
done

echo '---'

ORIGINAL_IFS=$IFS
IFS=','
echo "$*"
for i in "$*"; do
	echo "<$i>"
done
IFS=$ORIGINAL_IFS

echo '---'

echo "$@"

echo '---'

echo "$#"

for (( i=0; i<="$#"; i++ )){
	echo "$1"
	shift
}

echo '---'

echo "$?"

echo '---'

echo "PID of the current shell: $$"
echo $( echo "Subshell will retuns the PID of the parent shell: $$" )

echo '---'

echo "The PID of the process that most recently put in the background$!"

echo '---'

