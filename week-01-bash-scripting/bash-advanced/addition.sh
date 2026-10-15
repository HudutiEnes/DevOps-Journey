#!/bin/bash

addition() {
    firstnum="$1"
    secondnum="$2"
    local result=$((firstnum + secondnum))
    echo "$firstnum + $secondnum = $result"
}

addition 7 18
