#!/bin/bash
# Description: Professional Log Mining Pipeline
# Purpose: Extract, filter, and rank unique IPs from a 404 error event.

# 1. Create a mini 'messy' log for demonstration
echo "192.168.1.1 - - [25/Apr/2026] \"GET /index.html HTTP/1.1\" 200" >access.log
echo "172.16.0.45 - - [25/Apr/2026] \"GET /admin HTTP/1.1\" 404" >>access.log
echo "192.168.1.1 - - [25/Apr/2026] \"GET /login HTTP/1.1\" 404" >>access.log
echo "172.16.0.45 - - [25/Apr/2026] \"GET /secret HTTP/1.1\" 404" >>access.log
echo "172.16.0.45 - - [25/Apr/2026] \"GET /config HTTP/1.1\" 404" >>access.log

# 2. The Pipeline:
# grep: Filters for lines containing '404'
# awk: Prints the first column ($1), which is the IP
# sort: Necessary for uniq to work (groups identical IPs)
# uniq -c: Counts occurrences and removes duplicates
# sort -nr: Sorts the final count numerically (n) in reverse (r) order
echo "--- Top Attacking IPs (404 Errors) ---"
grep "404" access.log | awk '{print $1}' | sort | uniq -c | sort -nr
