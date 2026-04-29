# 🛡️ Guard.sh: Week 1 System Auditor Final Project

This repository contains the final project for **Week 1 (Linux & Bash)** of the 15-week DevOps Roadmap.

---

## 📝 Documentation (README)

### Overview

`guard.sh` is an automated system administration tool designed to perform security audits, storage monitoring, and network logging on a Fedora/Linux system.

### Key Features

- **Root Security:** Mandatory `$EUID` check to prevent permission errors.
- **Permission Audit:** Identifies "World Writable" (777) security risks in `/etc`.
- **Visual Storage Monitor:** Color-coded `df` output (Red for partitions >80% full).
- **Network Logging:** Persistent timestamped logs of all listening ports.
- **Automatic Cleanup:** Self-maintaining log directory (prunes files older than 5 days).

### Usage

1. `chmod +x guard.sh`
2. `sudo ./guard.sh`

---
