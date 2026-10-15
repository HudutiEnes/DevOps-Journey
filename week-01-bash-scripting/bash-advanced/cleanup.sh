#!/bin/bash

tmpfile=/tmp/cleanup-test.txt
trap "rm -f $tmpfile" EXIT

touch "$tmpfile"
echo "File created."
