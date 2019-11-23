#!/usr/local/bin/bash -e

# using bash 5.0.11(1) release to support readarray

if [[ ! -f "tmp/todo_list.txt" ]] ; then
    declare -a todo_list
    mkdir tmp
    > tmp/todo_list.txt
else
    readarray -t todo_list < tmp/todo_list.txt
fi

todo_list=( "${todo_list[@]}" "$1" )

> tmp/todo_list.txt

for i in "${!todo_list[@]}"; do
    printf "${todo_list[i]}\n" >> tmp/todo_list.txt
done