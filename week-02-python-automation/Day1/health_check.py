#!/usr/bin/env python3

# Create a list of dictionaries

projects = [
    {"Name": "task-manager-api", "Has_Git": True},
    {"Name": "notes-app-v2", "Has_Git": True},
    {"Name": "portfolio", "Has_Git": False},
]

# Loop through list and print if project is missing .git file

for p in projects:
    if p["Has_Git"] == False:
        print(f"Warning project {p['Name']} is missing a Git anchor!")
    else:
        print(f"Project {p['Name']} is secure.")
