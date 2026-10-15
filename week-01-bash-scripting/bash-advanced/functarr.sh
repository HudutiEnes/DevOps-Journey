#!/bin/bash 

process_ips() {
    IPs=("192.168.1.1" "192.168.1.2" "192.168.1.3")
    for i in "${IPs[@]}"; do
        echo "Processing: $i"
    done

    echo "Processed ${#IPs[@]} IPs."
}

process_ips
