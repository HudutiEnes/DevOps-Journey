#!/bin/bash 

arr=("first" "second" "third")

echo "First:${arr[0]}"
echo "Second:${arr[1]}"
echo "Third:${arr[2]}"

for i in {0..2}; do
    echo "Array elements:${arr[i]}"
done
