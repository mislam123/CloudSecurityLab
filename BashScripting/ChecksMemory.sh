#!/bin/bash

echo "===== Memory Check ====="

TOTAL=$(free -m | awk '/Mem:/ {print $2}')
USED=$(free -m | awk '/Mem:/ {print $3}')
AVAILABLE=$(free -m | awk '/Mem:/ {print $7}')

USAGE=$((USED * 100 / TOTAL))

echo "Total Memory     : ${TOTAL} MB"
echo "Used Memory      : ${USED} MB"
echo "Available Memory : ${AVAILABLE} MB"
echo "Memory Usage     : ${USAGE}%"

if [ "$USAGE" -ge 80 ]; then
    echo "WARNING: Memory usage is HIGH!"
else
    echo "Memory usage is OK."
fi
