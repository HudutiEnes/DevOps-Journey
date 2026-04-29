#!/bin/bash
# Description: Create a shared directory where users can't delete each other's files.

# 1. Create the shared directory
sudo mkdir /tmp/prison

# 2. Give everyone read, write, and execute permissions (Full access)
sudo chmod 777 /tmp/prison

# 3. Apply the Sticky Bit (The "Prison" rule)
sudo chmod +t /tmp/prison

echo "Sticky Bit applied to /tmp/prison. Users can add files but only delete their own."
