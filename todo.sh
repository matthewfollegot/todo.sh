#!/bin/bash -e

# Get shit done, organize later!

declare -a todo_list

add () {
    todo_list=( "${todo_list[@]}" "$1" )
}

add "Hello World"
add "today we're gonna build a CLI todo app"
add "and maybeeee learn C"

todo () {
    for i in "${todo_list[@]}"; do
        echo $i
    done
}

todo

remove () {
    for i in "${!todo_list[@]}"; do
        if [[ "${todo_list[i]}" = $1 ]]; then
            unset "todo_list[i]"
        fi
    done
}

remove "Hello World"

todo