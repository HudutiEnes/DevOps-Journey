#!/usr/bin/env python3
import os

path = "./usernames.txt"

with open(path, "r") as f:
    for line in f:
        clean_name = line.strip()

        if not clean_name:
            continue

        os.makedirs(name=f"users_data/{clean_name}", exist_ok=True)
        print(f"Created directory for user: {clean_name}")
