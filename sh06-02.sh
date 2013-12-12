#! /bin/bash

read -p "please input your choice: " choice

if [ "$choice" == 'y' ] || [ "$choice" == 'Y' ] ; then
    echo "OK, continue!"
elif [ "$choice" == 'n' ] || [ "$choice" == 'N' ] ; then
    echo "Oh, interrupt!"
else
    echo "I don't know what your choice is!"
fi

exit 0
