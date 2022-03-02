#!/bin/bash

echo 'What is you favorite ninja turtle?'

echo '1 - Raphael.'
echo '2 - Leonardo.'
echo '3 - Michelangelo.'
echo '4 - Donatello.'

read turtle

case $turtle in
1) echo 'Raphael is cool, but rude!' ;;
2) echo 'Leonardo leads.' ;;
3) echo 'Michelangelo is a party dude.' ;;
4) echo 'Donatello does machines.' ;;
*) echo 'Did you even watch the show?' ;;
esac
