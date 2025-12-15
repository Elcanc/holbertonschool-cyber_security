#!/bin/bash
sha256sum -c <(echo "$2  $1") &>/dev/null && echo ok || echo fail
