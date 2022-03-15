#!/bin/bash

for (( i = 0; i <= 10; i++ )); do
	echo $i
done

echo '---'

for (( i = 0, j = 20; i <= 10, j >= 0; i++, j-- )); do
	echo "i: $i, j: $j"
done

echo '---'


for i in $( seq 10 ); do
	echo $i
done

echo '---'

for i in $( seq 1 2 10 ); do
	echo $i
done

echo '---'

list=('Alice' 'Bob' 'John' 'Joe' 'George' 'Suzy')
for i in "${list[@]}"; do
	echo "$i"
done

echo '---'

list1='Alice Bob John Joe George Suzy'
for i in $list1; do
	echo "$i"
done

echo '---'

for file in $(ls /); do
	echo $file 
done

echo '---'

for ch in $(cat for.txt); do
	echo $ch
done

