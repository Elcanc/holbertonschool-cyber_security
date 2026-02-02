#!/bin/bash
john --format=raw-sha256 --wordlist=/usr/share/wordlists/rockyou.txt.gz "$1" && john --show --format=raw-sha256 "$1" | cut -d: -f2 > 6-password.txt
