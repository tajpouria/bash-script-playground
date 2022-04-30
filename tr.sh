#!/usr/bin/env bash

###########
# General #
##########

# os.getcwd()
DIR_PATH="$(
  cd -- "$(dirname "$0")" >/dev/null 2>&1
  pwd -P
)"

# a = a || "DEFAULT_VALUE"
a=${a:DEFAULT_VALUE}

##########
# String #
#########

# arr = list("hello;world")
arr=$(echo "hello;world" | fold -w1)

# arr = "hello;world".split(";")
arr=($(echo "hello;world" | tr ";" "\n"))

# string.strip()
echo "   lol  " | xargs

# if string1 == string2:
if [[ "$string1" == "$string2" || ("$string1" =~ ^2[0-9]{2}$ && "$string2" =~ .*Linux.*) ]]; then
elif [[ -n "$string" ]]; then # String is not empty
elif [[ -z "$string" ]]; then # String is empty
else
fi

# if re.match(r"hello[0-9]+", "hello"):
regex="[0-9]{4} [0-9]{4} [0-9]{4} [0-9]{4}"
if ! [[ "$s_inp" =~ $regex ]]; then
  echo "pattern false"
  exit 1
fi

#########
# Array #
########

# if len(arr or str) < 1:
if [ "${#inp}" -lt 1 ]; then
fi

# arr.append("New el")
Unix=("${Unix[@]}" "New el" "New el2")

# arr = arr[i:i+4]
Unix="${Unix[@]:0:4}"

# del arr[0:0+i]
Unix=("${Unix[@]:0:4}" "${Unix[@]:i}")

########
# Loop #
#######

# for i in range(string):
#   ch = string[i]
for i in "${!string[@]}"; do
  ch = "${string[$i]}"
done

#########
# Math #
#######

# if num % 2 == 0: print("Even")
# else: print("Odd")
if [ $(($i % 2)) -eq 0 ]; then # -ne Make it reverse
else
fi

# i += 1
((i = i + 1))
