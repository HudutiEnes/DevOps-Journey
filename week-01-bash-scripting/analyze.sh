#!/bin/bash

log=$1

totalreq=$(grep -c "" $log)
errorcnt=$(grep -c -v "200" $log)
errorprc=$((errorcnt * 100 / totalreq))

echo "Total requests: $totalreq"
echo "Error count: $errorcnt"
echo "Error rate: $errorprc%"
