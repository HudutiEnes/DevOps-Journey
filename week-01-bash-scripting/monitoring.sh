#!/bin/bash

processPid=$1


if kill -0 $processPid; then
    echo "Process $processPid is alive"
else
    echo "Process $processPid is dead"
fi
