#! /bin/bash

read -p "please input your first name:" -t 30 first_name
read -p "please input your last name:" -t 30 last_name

printf "your full name is: %s %s\n" $first_name $last_name

exit 0
