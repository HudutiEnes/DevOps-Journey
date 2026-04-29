#!/usr/bin/env python3

hostnames = ["eneshuduti", "user1", "selma"]

server_info = {
    "eneshuduti": "192.168.1.13",
    "user1": "172.167.2.1",
    "selma": "192.168.1.1",
}

for name in hostnames:
    print(f"System Alert: Connecting to {name} at {server_info[name]}")
