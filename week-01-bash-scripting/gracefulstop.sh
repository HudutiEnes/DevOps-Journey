#!/bin/bash

ProcessId=$1

kill -15 $ProcessId

sleep 5

if kill -0 $ProcessId; then
    kill -9 $ProcessId
else
    echo "The process $ProcessId is already dead"
fi
