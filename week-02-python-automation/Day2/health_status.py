#!/usr/bin/env python3


def get_disk_health(used, total):
    percentage = used / total * 100

    if percentage > 90:
        return f"CRITICAL: Disk at {percentage}%!"
    elif percentage > 70:
        return f"WARNING: DISK at {percentage}%!"
    else:
        return "Healthy"


check = get_disk_health(180, 200)

print(check)
