#!/usr/bin/env python3

server_loads = {
    "web-prod-01": 0.45,
    "db-primary": 0.89,
    "cache-node": 0.12,
    "auth-service": 0.72,
    "backup-server": 0.95,
}

for name, load in server_loads.items():
    if load > 0.7:
        print(f"Alert:Load greater than 0.70\n name: {name} load: {load}")
