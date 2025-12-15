#!/bin/bash
echo "$2  $1" > tmp_hash && sha256sum -c tmp_hash &>/dev/null && echo ok || echo fail
rm -f tmp_hash
