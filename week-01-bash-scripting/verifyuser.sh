#!/bin/bash

myuser=$(whoami)

if [[ $myuser == "eneshuduti" ]]; then
    echo "You are $myuser"
else
    echo "You are not $myuser"
fi
