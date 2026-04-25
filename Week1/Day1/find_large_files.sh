#!/bin/bash
# ------------------------------------------------------------------
# Description: Finds files in /var modified in the last 60 mins,
#              larger than 1MB, sorted by size.
# ------------------------------------------------------------------

sudo find /var -type f -mmin -60 -size +1M >~/investigation.log

echo "Results saved to ~/investigation.log"
