#!/usr/bin/env python3
import os
import sys

try:
    result = os.listdir("/var/logr")
    print(result)
except PermissionError:
    print("ERROR: You are not sudo you can't enter.")
    sys.exit(1)
except FileNotFoundError:
    print("ERROR: Directory was deleted it doesn't exist.")
    sys.exit(1)
finally:
    print("Check complete: System is still readable.")
