#!/usr/bin/env python3


def is_open_port(port):
    if port in [80, 443]:
        return True

    return False


result = is_open_port(80)

if result == True:
    print("Firewall Rule Required")

active_ports = [22, 80, 3000, 443]


for port in active_ports:
    current_port = is_open_port(port)
    if current_port == True:
        print(f"Firewall Rule Required for port {port}")
