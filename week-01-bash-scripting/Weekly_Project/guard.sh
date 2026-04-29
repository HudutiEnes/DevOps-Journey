#!/usr/bin/env bash

# Verify root privileges before execution.

if [ "$EUID" -ne 0 ]; then
	echo "Error: This script must be run as root."
	exit 1
fi

mkdir -p /var/log/auditor

# Find all 777 files and “World Writable” files in /etc.

find /etc/ -type f -perm 777 -print

# Highlight partitions over 80% usage in Red.

df -h | awk 'NR>1 {
    usage = $5; sub(/%/, "", usage);
    
    # Reset the color at the start of every line
    color = "\033[0m"; 

    if ( (usage + 0) >= 80 ) {
        color = "\033[31m"; # Red
    }

    printf "%s%-20s %-5s\033[0m\n", color, $1, $5
}'

# List all open ports and the services listening on them.
# Save reports to /var/log/auditor/.
echo -e "\n--- NETWORK: Open Ports (Logged to /var/log/auditor) ---"
date >>/var/log/auditor/port_audit.log
ss -lntu >>/var/log/auditor/port_audit.log

# Auto-delete reports older than 5 days.

find /var/log/auditor/ -type f -mtime +5 -delete

echo "Audit Complete. Report saved to /var/log/auditor/port_audit.log"
