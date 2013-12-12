#! /bin/bash

read -p "please input the filename:" -t 30 filename

test -e $filename || exit 1 
test -f $filename && echo "$filename is regular file"
test -d $filename && echo "$filename is directory"
echo "permission:"
test -r $filename && echo "read"
test -w $filename && echo "write"
test -x $filename && echo "execute"

exit 0
