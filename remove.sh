#!/usr/local/bin/bash -e

# using bash 5.0.11(1) release to support readarray

source persist.sh

if [[ ! -f "tmp/todo_list.txt" ]] ; then
    echo "todo list doesn't exist"
else
    readarray -t todo_list < tmp/todo_list.txt
fi

for i in "${!todo_list[@]}"; do
    if [[ "${todo_list[i]}" = $1 ]]; then
        unset "todo_list[i]"
    fi
done

persist
