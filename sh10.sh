#! /bin/bash

read -p "please input your demobilization date (YYYYMMDD): " date2

date_detect=$( echo $date2 | grep '[0-9]\{8\}')

if [ "date_detect" == "" ]; then
    echo "your date format is wrong!"
    exit 1
else
    declare -i demo_seconds=`date --date="$date2" +%s`
    declare -i now_seconds=`date +%s`
    declare -i distance=$(($now_seconds - $demo_seconds))
    declare -i days=$(($distance/60/60/24))

    if [ "$distance" -lt "0" ]; then
        echo "you had demobilized $days days ago"
    else
        echo "you will demobize after $((-$days)) days"
    fi
fi

exit 0
