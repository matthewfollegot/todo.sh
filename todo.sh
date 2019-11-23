#!/usr/local/bin/bash -e

# using bash 5.0.11(1) release to support readarray

# Get shit done, organize later! 

if [[ ! -f "/tmp/todo_list.txt" ]] ; then
    declare -a todo_list
else
    readarray -t todo_list < tmp/todo_list.txt
fi

for i in "${todo_list[@]}"; do
    echo $i
done
