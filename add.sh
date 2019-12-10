#!/usr/local/bin/bash -e

# using bash 5.0.11(1) release to support readarray

source persist.sh

if [[ ! -f "tmp/todo_list.txt" ]] ; then
    declare -a todo_list
    mkdir tmp
    > tmp/todo_list.txt
else
    readarray -t todo_list < tmp/todo_list.txt
fi

todo_list=( "${todo_list[@]}" "$1" )

persist
