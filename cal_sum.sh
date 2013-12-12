#! /bin/bash

read -p "please input the number: " max

declare -i sum=0

for ((i=1; i <= max; i++))
do
    sum=$sum+i
done

echo "the sum is $sum"

exit 0
