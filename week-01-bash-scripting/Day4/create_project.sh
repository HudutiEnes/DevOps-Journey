#!/usr/bin/env bash

PROJECT_NAME=$1

if [ -z "PROJECT_NAME" ]; then
	echo "Usage: $0 <project_name>"
	exit 1
fi

mkdir "$PROJECT_NAME" && echo "Directory '$PROJECT_NAME' created successfully." || echo "Failed to create directory."

if [ $? -eq 0 ]; then
	touch "$PROJECT_NAME/README.md"
	echo "Project initialized."
else
	echo "Error: Could not initialize project files."
	exit 1
fi
