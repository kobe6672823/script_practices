#! /bin/bash

echo "the script name: $0"
echo "there are $# args"
[ "$#" -lt 2 ] && echo "there are too few args!"
[ "$#" -ge 1 ] && echo "all the args are: $*"
[ "$#" -ge 1 ] && echo "the first arg is: $1"
[ "$#" -ge 2 ] && echo "the second arg is: $2"

exit 0
