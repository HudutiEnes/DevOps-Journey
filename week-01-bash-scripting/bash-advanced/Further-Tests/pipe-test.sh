#!/bin/bash

set -o pipefail
set -e

cat /tmp/nonexistent-file | sort

echo "Still running"
