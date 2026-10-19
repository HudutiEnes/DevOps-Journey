#!/bin/bash


ServiceName=$1
Command=$2

if [[ "$#" -lt 2 ]]; then
    echo "Usage: $0 <service-name> <start-command>" >&2
    exit 1
fi

set -e 
trap 'echo "Cleanup done"' EXIT

eval "exec $Command" &
processid=$!

sleep 2

if kill -0 $processid 2> /dev/null; then
    echo "deployed $ServiceName with $processid"
else
    echo "ERROR: $ServiceName failed to start" >&2
    exit 1
fi


