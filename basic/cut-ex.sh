#!/bin/bash
# https://www.folkstalk.com/2012/02/cut-command-in-unix-linux-examples.html

ex="cut-ex.txt"

cat << EOF > $ex
unix or linux os
is unix good os
is linux good os
EOF

echo '4th character'

cut -c4 $ex

echo '4th and 6th character of each line'

cut -c4,6 $ex

echo 'Character range'

cut -c4-7 $ex

echo 'First 6 character'

cut -c-6 $ex

echo 'Last 6 character'

cut -c6- $ex

echo 'Separate using delimiter and get the 2nd filed'

cut -d ' ' -f2 $ex

echo 'Separate using delimiter and get the filed in range'

cut -d ' ' -f1-3 $ex

echo 'Separate using delimiter and get the first 3 filed'

cut -d ' ' -f-3 $ex

echo 'Separate using delimiter and get the last 3 filed'

cut -d ' ' -f3- $ex

