#!/usr/bin/env python3

import subprocess

result = subprocess.run(["df", "-h"], capture_output=True, text=True)
output = result.stdout

for line in output.splitlines()[1:]:
    parts = line.split()

    if len(parts) >= 5:
        # Get the percentage string
        usage_str = parts[4]

        # Convert percentage to number
        usage_int = int(usage_str.replace("%", ""))
        partition_name = parts[0]

        if usage_int > 80:
            print(f"ALERT: Partition {partition_name} is at {usage_int}%!")
        else:
            print(f"GOOD: {partition_name} is at {usage_int}%.")
