#! /bin/bash

if [ -e "/root/test/logical" ]; then
    if [ -f "/root/test/logical" ]; then
        echo "this is a file, i will remove it and create a new directory with the same name"
        rm /root/test/logical
        mkdir /root/test/logical
    elif [ -d "/root/test/logical" ]; then
        echo "this is a directory, i will remove it"
        rm -r /root/test/logical
    fi
else
    echo "no such file/directory, i will touch it"
    if [ ! -e "/root/test" ]; then    
        mkdir /root/test
    fi
    touch /root/test/logical
fi

exit 0
