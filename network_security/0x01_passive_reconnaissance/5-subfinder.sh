#!/bin/bash
subfinder -d $1 -silent | tee $1.txt
