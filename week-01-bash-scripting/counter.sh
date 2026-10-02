#!/bin/bash

username=$(whoami)
counter=0

for i in {1..5}; do
    counter=$((counter + 1))
    echo "Iteration $i: counter is $counter"
done

if [[ $counter == 5 ]]; then
    echo "Counter reached 5"
else
    echo "Counter did not reach 5, it's $counter"
fi
