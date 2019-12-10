#!/usr/local/bin/bash

# using bash 5.0.11(1) release to support readarray

# this file separates out the persistence of the todo_list

persist() {

    > tmp/todo_list.txt

    for i in "${!todo_list[@]}"; do
        printf "${todo_list[i]}\n" >> tmp/todo_list.txt
    done

}
