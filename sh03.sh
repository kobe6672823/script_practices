#! /bin/bash

declare -i today=`date +%Y%m%d`
declare -i yesterday=$today-1
declare -i tdbf_yesterday=$yesterday-1

rm filename*
filename1='filename'$today
filename2='filename'$yesterday
filename3='filename'$tdbf_yesterday
touch "$filename1"
touch "$filename2"
touch "$filename3"

exit 0
