#!/bin/bash


Unix[0]="Debian"
Unix[1]="Ubuntu"
Unix[2]="Red hat"
Unix[3]="Ubuntu"
Unix[4]="Suse"

echo "${Unix[1]}"
echo '---'

Unix=('Debian' 'Red hat' 'Red hat' 'Suse' 'Fedora');

echo "${Unix[@]}"
echo '---'

echo "${#Unix[@]}"
echo '---'

echo "${#Unix[3]}"
echo '---'

echo "${Unix[@]:0:4}"
echo '---'

Unix=("${Unix[@]}" "New el" "New el2")
echo "${Unix[@]}"
echo '---'


unset Unix[3]
echo "${Unix[3]}" # Echo null cuz index is still threre and just vaule has been removed.
echo '---'

# To completly remove an element from array.
idx=3
Unix=("${Unix[@]:0:$idx}" "${Unix[@]:$idx}")
echo "${Unix[$idx]}" # Next index will be replaced since.
echo '---'

Linux=("${Unix[@]}")
echo "${linux[@]}"
echo '---'

UnixLinux=("${Unix[@]}" "${Linux[@]}")
echo "${UnixLinux[@]}"

echo '---'
unset UnixLinux

echo "${#UnixLinux[@]}"

