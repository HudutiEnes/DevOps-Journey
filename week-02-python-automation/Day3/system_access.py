#!/usr/bin/env python3
import subprocess

import os

# os.system("ls /usr/")

result = subprocess.run(["ls", "-l"], capture_output=True, text=True)

raw_output = result.stdout

file_list = raw_output.split()

file_count = len(file_list)

print(f"I found {file_count} files in directory")
