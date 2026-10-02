#!/bin/bash

pid=$$

for i in {1..3}; do
    echo "Iteration $i,my pid is $pid"
done

if (($pid >= 1000)); then
    echo "PID is large"
else
    echo "PID is small"
fi
