#!/usr/bin/env bash

Name=$1

if id "$Name" &>/dev/null; then
	echo "User exists."
	echo "The UID is: $(id -u "$Name")"
	# We stop here for existing users.
else
	echo "User does not exist, creating user..."
	useradd -m -G developers "$Name"

	if [ $? -eq 0 ]; then
		echo "User $Name created successfully."
	else
		echo "Failed to create user. Did you forget sudo?"
	fi
fi
