#!/usr/bin/env bash

TARGET=$1

if [ "$EUID" -ne 0 ]; then
	echo "Please run as root"
	exit 1
fi

if [ -z "$TARGET" ]; then
	echo "Error:File '$TARGET' not found."
	exit 1
fi

if [ ! -f "$TARGET" ]; then
	echo "Error: File '$TARGET' does not exist."
	exit 1
fi

if [ -w "$TARGET" ]; then
	echo "Succes: $TARGET is writable"
else
	echo "Error: $TARGET is NOT writable."
	exit 1
fi
