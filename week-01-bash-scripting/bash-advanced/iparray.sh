#!/bin/bash 

ip=("192.168.1.1" "192.168.1.2" "192.168.1.3")

for ip_addr in ${ip[@]}; do
    echo "Checking: $ip_addr"
done
