#!/usr/bin/env bash

#catch the process - sort it in ascending order - start from 2nd line - check pcpu > 0.1 if true print entire line $0
ps -eo pcpu,pid,comm --sort=-pcpu | tail -n 2 | awk '$1 > 0.1{ print $0 }' >>/tmp/cpu_watchdog.log
