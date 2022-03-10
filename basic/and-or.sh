#!/bin/bash

echo 1 && echo 2 && echo 3

echo 1 || echo 2 || echo 3

ls 1 || echo 1 || echo 2

ls 1 || ls 2 || echo 2

echo '---'

ls 1 && echo 1  || echo 2

ls 1 && (echo 1  || echo 2)

echo '---'

ls 1 && echo 1  || ls 2 && echo 3 || echo 4

