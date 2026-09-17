#!/bin/bash

THRESHOLD=80
REPORT="/Logs/disk_usage_report.txt"

echo "Disk Usage Security Check" > "$REPORT"
echo "=========================" >> "$REPORT"
echo "Date: $(date)" >> "$REPORT"
echo >> "$REPORT"

df -h >> "$REPORT"

echo >> "$REPORT"
echo "Warnings:" >> "$REPORT"

df -P | awk 'NR > 1 {print $5, $6}' | while read USAGE MOUNT; do

    USAGE=${USAGE%\%}

    if [ "$USAGE" -gt "$THRESHOLD" ]; then
        echo "WARNING: $MOUNT is ${USAGE}% full" >> "$REPORT"
    fi

done

echo
echo "Report saved to: $REPORT"