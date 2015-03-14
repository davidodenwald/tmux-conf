#!/bin/bash

MEM_TOTAL=$(cat /proc/meminfo | grep "MemTotal" | sed "s/ //g" | cut -f 2 -d ":" | cut -f 1 -d "k")
MEM_USED=$(cat /proc/meminfo | grep "MemFree" | sed "s/ //g" | cut -f 2 -d ":" | cut -f 1 -d "k")

MEM_PERCENT=$(echo "scale=3;($MEM_USED/$MEM_TOTAL) * 100" | bc | cut -f 1 -d ".")

echo "$MEM_PERCENT%"
