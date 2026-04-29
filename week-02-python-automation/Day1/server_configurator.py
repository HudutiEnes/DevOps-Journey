#!/usr/bin/env python3

# Creating dictionary about my workstation

workstation = {"Model": "Lenovo", "os": "Fedora", "Editor": "NVim"}

# Updating the os to specific version

workstation["os"] = "Fedora 43"

# Adding a new key to the dictionary workstation

workstation.update({"Status": "Clean"})

# Print the value of the editor key using the .get() method

workstation.get("Editor")
