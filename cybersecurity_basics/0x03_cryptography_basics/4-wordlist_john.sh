#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt.gz "$1" && john --show "$1" | cut -d: -f2 | grep -v '^$' > 4-password.txt
