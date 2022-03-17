#!/bin/bash

echo '::Sequence expression::'

echo {1..10}
echo {1..10..3} # 1 4 7 ..
echo {10..1..2} # 10 8 6 ..
echo {a..z}
echo {a..z..4} # a e i ..
echo {A..z}
echo {a..Z}

for i in {1..10}; do
  echo "i=$i"
done

# If you want to store it in a variable
arr=$(echo {10..100..10})
echo "${arr[@]}"
# or
arr=($(seq 1 2 10))
echo "${arr[@]}"

echo '::Brace expansion::'

list=$(echo {10..100..10})
for i in $list; do
  echo $i
done

# for i in $(seq 10 10 100);do
#	 echo $i
# done

var='A variable'
varn='Another variable'

echo "${var}nu"
echo "${varn}nu"

echo '::Parameter indirection::'

var='varn'
varn='another variable'

echo "${!var}" # Another variable

for i in $(seq 1 $#); do
  echo "${!i}"
done

echo '::Variable default assignment::'

parameter=${parameter_value:-'parameter default value'}
another_parameter_value="another parameter value"
another_parameter=${another_parameter_value:-'Another parameter default value'}
echo "$parameter"
echo "$another_parameter"
