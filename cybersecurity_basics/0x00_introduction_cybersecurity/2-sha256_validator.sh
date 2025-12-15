#!/bin/bash
sha256sum -c <(echo "$2  $1") &>/dev/null && echo "$1: OK" || echo "$1: FAIL"
