#!/usr/bin/env bash

# Check if service is active
ISACTIVE=$(systemctl is-active sshd)

if [[ $ISACTIVE != "active" ]]; then
	echo "SSH NOT ACTIVE:Trying to start SSH" | wall
	systemctl start sshd

	if [[ $(systemctl is-active sshd) == "active" ]]; then
		echo "RECOVERY: SSH service restored successfully." | wall
	fi
else
	echo "Service Monitor: SSH is healthy."
fi
