#!/usr/bin/env python3


def is_valid_ipv4(ip_string):
    # Split the sting by dots
    parts = ip_string.split(".")

    # Check does the ip address have 4 parts
    if len(parts) != 4:
        return False

    for part in parts:
        if not part.isdigit():
            return False

        num = int(part)

        if num <= 0 or num >= 255:
            return False

    return True


Valid_ip = "192.168.1.1"
Invalid_ip = "192.168.1"

check1 = is_valid_ipv4(Valid_ip)
check2 = is_valid_ipv4(Invalid_ip)

print(f"Checking valid ip address: {check1}")
print(f"Checking invalid ip address: {check2}")
