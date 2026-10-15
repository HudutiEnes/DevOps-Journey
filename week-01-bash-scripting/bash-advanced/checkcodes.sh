#!/bin/bash

function check_status {
  if [ $1 == 200 ]; then
    echo "OK"
  else
    echo "ERROR"
  fi
}

CODES=(200 404 500)

for code in ${CODES[@]};do
  check_status $code
done
