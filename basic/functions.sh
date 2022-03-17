#!/bin/bash

# Functions are scripts within scripts

function myfunc() {
  function another {
    echo "Inside the another function"
    echo $1
    echo $2
  }

  echo "Inside the myfunc function"
  echo $0
  echo $1
  echo $2

  another $1 $2
}

myfunc1() {
  echo "inside the myfunc1 function"
  echo $0
  echo $1
  echo $2
}

echo "Main"
echo $0
echo $1
echo $2

myfunc hello world
myfunc1 hello world

echo "importing other functions"

SCRIPT_PATH="$(
  cd -- "$(dirname "$0")" >/dev/null 2>&1
  pwd -P
)"

source "$SCRIPT_PATH/functions-shared.sh"

share_function
