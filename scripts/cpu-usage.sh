#!/bin/bash

CPU_PERCENT=$(tmux-mem-cpu-load | sed "s/ \+/\n/g" | grep "%")

echo "$CPU_PERCENT"
