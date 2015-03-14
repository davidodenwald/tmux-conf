#!/bin/bash

MEM_TOTAL=$(tmux-mem-cpu-load | cut -f 1 -d "M" | cut -f 2 -d "/")
MEM_USED=$(tmux-mem-cpu-load | cut -f 1 -d "M" | cut -f 1 -d "/")

MEM_PERCENT=$(echo "scale=3;($MEM_USED/$MEM_TOTAL) * 100" | bc | cut -f 1 -d ".")

echo "$MEM_PERCENT%"
