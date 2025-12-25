#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <domain>"
  exit 1
fi

nslookup $1 | grep 'Address' | tail -n +2 | awk '{print $2}'
