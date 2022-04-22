#!/bin/bash
# https://www.hackerrank.com/challenges/bash-tutorials---arithmetic-operations/problem

read e

printf "%.3f" $(echo "scale=4; $e" | bc)

