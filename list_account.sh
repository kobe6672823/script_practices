#! /bin/bash

account_list=`cat /etc/passwd | cut -d ":" -f 1 | sort | uniq`
declare -i line_num=1

for account in ${account_list}
do
    echo "the $line_num account is $account"
    line_num=$line_num+1
done

exit 0
