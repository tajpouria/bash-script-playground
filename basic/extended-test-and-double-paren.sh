#!/bin/bash

[[ 'string1' > 'string2' ]] && echo 'yes' || echo 'no'

# Greater than and smaller than symbols must be skipped in
# single bracket test command otherwise they are interpreted as redirection
[ 'string1' \> 'string2' ] && echo 'yes' || echo 'no'

echo '---'

[[ 'string' == 'string' ]] && echo 'equal' || echo 'not equal'
[[ 'string' != 'string-1' ]] && echo 'not equal' || echo 'equal'

echo '---'

# Patter match uses ==
[[ 'string1' == str* ]] && echo 'matches' || echo 'not matches'
# Regual expression match uses ~=
[[ 'string1' =~ str.*1$ ]] && echo 'matches' || echo 'not mathces'

echo '---'
(( a = ((1 + 1) * 2) / 3 ))
echo $a

b=$(( 1 + 2 ))
echo $b

c=$((2**5))
echo $c

d=$((2*5))
echo $d

(( e = 1 + 3 ))
echo $e
(( e++ ))
echo $e

(( f = e + 1 ))
echo $f

echo $(( f * e + 1 )) 

# Double paranteses is only inteded to perform mathematical operations between
# **integer** and not floating point numbers
echo $(( 17 / 3 )) # 5
# echo $(( 1.2 * 2.3 )) # throw an error

echo '---'

g=$( echo 'scale=2; 17 / 3' | bc )
echo $g

h=$( echo '1.2 + 2.4' | bc )
echo $h

# Notice the double quote
q=$( echo "$h + 2.4" | bc ) 
echo $q

echo '---'

# k=(( 1 + 2 )) #Syntax error Only doing the evaluation and does not returns anything to standar output
l=$(( 1 + 2 )) # Doing the evaluation and returns the results to standar output
echo $l

echo '---'

# Exit status of double the paranteses
# If the the result of the evaluation is zero then the exit staut
# will be 1.
# And if the the result of the evaluation is anything but 0 the exit
# status will be 0.

(( z = 1 - 1))
echo $?
(( y = 1 - 2 ))
echo $?

echo '---'

# $() Alternative but it's not that support
p=$[ 2 + 2 ]
echo $p


