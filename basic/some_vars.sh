#!/bin/bash

echo ~     # Current user home directory
echo ~root # Some other user home directory
echo ~+    # Current directory $PWD
echo ~-    # One directory back current directory `realpath ..`

dirs
pushd .
echo ~+0
echo ~+1
echo ~-1
