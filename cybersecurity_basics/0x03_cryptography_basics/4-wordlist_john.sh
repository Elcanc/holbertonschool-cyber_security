#!/bin/bash
john --format=raw-md5 --wordlist=/usr/share/wordlists/rockyou.txt.gz "$1" && john --show --format=raw-md5 "$1" | cut -d: -f2 | sed 's/^/^/' > 4-password.txt
