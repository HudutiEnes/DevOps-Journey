#!/bin/bash

file=$1

checkfile() {

    if [ -f "$1" ]; then
        return 0
    else
        return 1
    fi

}

checkfile "$1"
echo "$?"
