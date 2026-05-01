#!/usr/bin/env python3

import os
import time

for dir in os.listdir("."):
    time_modified = os.path.getmtime(dir)
    readable_date = time.ctime(time_modified)
    print(f"File name is {dir} it was modified {readable_date}")
