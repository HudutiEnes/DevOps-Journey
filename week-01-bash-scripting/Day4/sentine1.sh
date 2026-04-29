#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]; then
	echo "Unauthorized access attempt at $(date)" >>/tmp/sentinel_error.log
	exit 1
fi

FILE1=/var/log/syslog
FILE2=/var/log/auth.log
FILE3=/var/log/deploy.log

if [ -f "$FILE1" ] && [ -f "$FILE2" ] && [ -f "$FILE3" ]; then
	echo "Success: All core logs found."
else
	echo "Warning: One or more log files are missing."
fi

echo "--- Large Files in /var/log ---"
find /var/log -type f -size +10M 2>/dev/null

echo "--- World Writable Files in /tmp ---"
find /tmp -perm 777 2>/dev/null

read -p "Change permissions in /tmp to secure (644)? (y/n): " answer

if [ "$answer" == "y" ]; then
	find /tmp -type f -perm 777 -exec chmod 644 {} +
	echo "Permission updated."
else
	echo "Skipping fix. Safety first!"
fi
