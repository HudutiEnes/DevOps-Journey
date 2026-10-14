#!/bin/bash
firstnum="$1"
secondnum="$2"

addition() {
    local result=$((firstnum+secondnum))
    echo "$firstnum + $secondnum = $result"
}

addition
