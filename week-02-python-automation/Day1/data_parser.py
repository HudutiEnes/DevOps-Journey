#!/usr/bin/env python3

raw_data = "Server01:Up:192.168.1.1;Server02:Down:192.168.1.2;Server03:Up:192.168.1.3"

result_dict = []

pairs = raw_data.split(";")

for pair in pairs:

    parts = pair.split(":")

    server_dict = {"name": parts[0], "status": parts[1], "ip": parts[2]}

    result_dict.append(server_dict)

print(result_dict)
