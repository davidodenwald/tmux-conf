#!/bin/bash

RAM_TOTAL=$(tmux-mem-cpu-load | cut -f 1 -d "M" | cut -f 2 -d "/")
RAM_USED=$(tmux-mem-cpu-load | cut -f 1 -d "M" | cut -f 1 -d "/")

RAM_PERCENT=$(echo "scale=3;($RAM_USED/$RAM_TOTAL) * 100" | bc | cut -f 1 -d ".")

echo "$RAM_PERCENT%"
