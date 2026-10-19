#!/bin/bash
show() {
    echo "Inside function: $1"
}

echo "Script arg: $1"
show "hello"
show "$1"
