#! /bin/bash

read -p "please input your birthday(YYYYMMDD): " birthday

input_test=`echo $birthday | grep '[0-9]\{8\}'`
if [ "$input_test" == "" ]; then
    echo "your input is illegal, please try again!"
    exit 1
fi

declare -i birthday_in_second=`date --date="$birthday" +%s`
declare -i today_in_second=`date +%s`
declare -i distance=$(($birthday_in_second - $today_in_second))

if [ "$distance" -lt "0" ]; then
    echo "The day after $(($distance/60/60/24)) days will be your birthday"
else
    echo "You have held your birthday party $((-$distance/60/60/24)) days ago"
fi

exit 0
