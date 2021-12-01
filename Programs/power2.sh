#!/bin/bash

function is_power_of_two () {
    declare -i n=$1
    (( n > 0 && (n & (n - 1)) == 0 ))
}

for number; do
    if is_power_of_two "$number"; then
        printf "%d\n" "$number"
    fi
done
