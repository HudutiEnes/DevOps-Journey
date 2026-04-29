#!/usr/bin/env python3

projets = ["notes-app-v2", "task-manager-api", "portfolio"]

print(f"Projects im working on: {projets}")

projets.append("monitoring-tool")

print(f"Updated projects: {projets} \n Second project in list: {projets[1]}")

for p in projets:
    print(f"Ready to containerize: {p}")
