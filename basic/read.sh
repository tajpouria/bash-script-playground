#!/bin/bash

# read -p "Enter your input here: " var
# echo "$var"

# read -p 'Enter a list of elements seprated by a single space character: ' -a arr
# echo "${arr[@]}"

# read -e -p 'inter either y or n ' char
# echo "$char"

declare -i char_to_read=3
read -e -n ${char_to_read} -p "only the first $char_to_read will be read here: " lim
echo "$lim"

