#!/usr/bin/env bash

FILE=$1

if ! mv "$FILE" "/root/" 2>>/tmp/deploy.log; then
	echo "Move failed!"
	exit 1
else
	echo "Move successful!"
fi
