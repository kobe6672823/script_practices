#! /bin/bash

declare -i a
declare -i b

read -p "please input a:" -t 20 a
read -p "please input b:" -t 20 b

echo "the result of a * b is: $(($a*$b))"

exit 0
