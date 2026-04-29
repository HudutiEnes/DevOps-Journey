#!/usr/bin/env python3

messy_files = [
    "  backup_db.SQL",
    "log_01.tfilet  ",
    "SERVER_REPORT.pdf",
    "  indefile.HTML ",
    "ERROR_LOG.TXT",
]

fixed_list = [file.strip().lower() for file in messy_files]

print(fixed_list)
