#!/usr/bin/env bash

# Append uptime
uptime -p >>/tmp/uptime.log

# Capture the line count
WORD=$(wc -l </tmp/uptime.log)

# If more than 100 lines empty the file
if ((WORD > 100)); then
	>/tmp/uptime.log
fi
