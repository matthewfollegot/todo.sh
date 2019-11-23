#!/usr/local/bin/bash -e

# using bash 5.0.11(1) release to support readarray

if [[ ! -f "/tmp/todo_list.txt" ]] ; then
    echo "todo list doesn't exist"
else
    readarray -t todo_list < tmp/todo_list.txt
fi

> tmp/todo_list.txt

for i in "${!todo_list[@]}"; do
    if [[ "${todo_list[i]}" = $1 ]]; then
        unset "todo_list[i]"
    fi
done

for i in "${!todo_list[@]}"; do
    printf "${todo_list[i]}\n" >> tmp/todo_list.txt
done
