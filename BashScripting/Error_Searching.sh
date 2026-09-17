#!/bin/bash

LOG_DIR="/Users/muhammadislam/Desktop/Logs"
ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL" "VIEW" "PASS")
REPORT_FILE="/Users/muhammadislam/DevSpace/CloudSecurityLab/BashScripting/Logs/log_analysis_report.txt"

echo "Analysing Log Files" > "$REPORT_FILE"
echo "===================" >> "$REPORT_FILE"

echo -e "\nList of log files updated in last 24 hours" >> "$REPORT_FILE"

LOG_FILES=$(find "$LOG_DIR" -name "*.log" -mtime -1)

echo "$LOG_FILES" >> "$REPORT_FILE"

for LOG_FILE in $LOG_FILES; do

    echo -e "\n" >> "$REPORT_FILE"
    echo "=====================================" >> "$REPORT_FILE"
    echo "************* $LOG_FILE *************" >> "$REPORT_FILE"
    echo "=====================================" >> "$REPORT_FILE"

    for PATTERN in "${ERROR_PATTERNS[@]}"; do

        echo -e "\nSearching $PATTERN logs in $LOG_FILE" >> "$REPORT_FILE"

        grep -i "$PATTERN" "$LOG_FILE" >> "$REPORT_FILE"

        ERROR_COUNT=$(grep -ic "$PATTERN" "$LOG_FILE")

        echo "Count: $ERROR_COUNT" >> "$REPORT_FILE"

        if [ "$ERROR_COUNT" -gt 10 ]; then
            echo "ACTION REQUIRED: too many $PATTERN errors in log file $LOG_FILE" >> "$REPORT_FILE"
        fi

    done

done