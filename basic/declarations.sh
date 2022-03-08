#!/bin/bash

varname=333
echo "$varname"
varname="string"
echo "$varname"

echo '---'

typeset -i int=32
echo "int=$int"

typeset -i int1
int1=33
echo "int1=$int1"

typeset -i int2
int2="string"
echo "int2=$int2" # Will print 0 and value will not set

echo '---'

declare -i int3=45
echo "int3=$int3"

declare -i int4
int4=213
echo "int4=$int4"

declare -i int5
int5="string"
echo "int5=$int5"

echo '---'

# Read-only variables must be defined at the time of definition, 
# because they cannot reset later on 
declare -r realonly="const" 
echo "realonly=$readonly"

declare -r -i realonlyInt=1
echo "realonlyInt=$realonlyInt"
# realonlyInt=2 #  realonlyInt: readonly variable

echo '---'

arr=(5 1 1)
echo "${arr[@]}"

declare -a arr1=(1 3 5 2 "test string")
echo "arr1=${arr1[@]}"

declare -a arr2
arr2=([0]='zero' [2]='two' [1]='one')
echo "arr2=${arr2[@]}"

declare -A associative_array=(
	['foo']='bar'
	['bar']='baz'
	['baz']='bit'
)
echo "associative_array=${associative_array[@]}"
echo "associative_array[foo]=${associative_array['foo']}"

# The `-x` flag export the variable and make it accessible
# Globally in the bash session, so other script can use it for example 
declare -x -a exported_arr=(1 2 3)

