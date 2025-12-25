#!/bin/bash
whois $1 | awk '/Registrant/ {print "Registrant Name," $3 " " $4; exit} /Admin/ {print "Admin Name," $3 " " $4; exit}'

