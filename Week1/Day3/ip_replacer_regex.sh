#!/bin/bash
# Description: Using sed with Extended Regex to find ANY IP address
# and replace it with a specific internal IP.

# 1. Create a db config with different IPs
echo "server_ip=192.168.1.1" >db.conf
echo "db_ip=172.16.0.45" >>db.conf
echo "gateway=10.10.10.254" >>db.conf

# 2. The Regex Power Move:
# [0-9]{1,3} matches 1 to 3 digits
# (\.[0-9]{1,3}){3} matches the dot and digits, repeated 3 times
sed -i -E 's/[0-9]{1,3}(\.[0-9]{1,3}){3}/10.0.0.5/g' db.conf

echo "All different IPs have been standardized to 10.0.0.5:"
cat db.conf
