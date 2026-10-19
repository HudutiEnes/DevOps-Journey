#!/bin/bash
tmpfile=/tmp/cleanup-test.txt
trap 'echo "TRAP FIRED"; rm -f "$tmpfile"' EXIT

echo "Before touch"
touch "$tmpfile"
ls -l "$tmpfile"
echo "End of script"
