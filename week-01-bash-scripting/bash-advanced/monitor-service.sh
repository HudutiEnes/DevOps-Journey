#!/bin/bash 

process=$1
restart_cmd=$2

if [[ "$#" -lt 2 ]]; then
    echo "Usage: $0 <process> <restart_cmd>" >&2
    exit 1
fi

if kill -0 $process 2>/dev/null; then
    echo "Service is running, PID: $process"
else
    echo "Service down, attempting restar."
    eval "$restart_cmd" &
    echo "Restarted, new PID: $!"
fi
