#! /bin/bash

read -p "please input your choice: " choice

[ "$choice" == "Y" -o "$choice" == "y" ] && echo "OK, continue!" && flag="ok"
[ "$choice" == "N" -o "$choice" == "n" ] && echo "Oh, interrupt!" && flag="ok"
[ "$flag" != "ok" ] && echo "I don't know what your choice is!" && exit 1
exit 0

