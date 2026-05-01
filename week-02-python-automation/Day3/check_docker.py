#!/usr/bin/env python3
import subprocess

result = subprocess.run(["which", "docker"], capture_output=True)

if result.returncode == 0:
    print("GOOD: You have the docker installed.")
else:
    print("ALERT: You need to install docker.")
