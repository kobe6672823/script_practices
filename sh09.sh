#! /bin/bash

if [ "$#" != 1 ] ; then
    echo "only need one opt: hello"
elif [ "$1" != "hello" ] ; then
    echo "the opt should be: hello"
else
    echo "hello, how are you?"
fi

exit 0
