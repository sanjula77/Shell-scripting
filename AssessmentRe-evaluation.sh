#!/bin/bash

# Define log file path
LOG_FILE="/var/log/syslog"

# Check if log file exists and is not empty
if [[ ! -f "$LOG_FILE" || ! -s "$LOG_FILE" ]]; then
    echo "Error: Log file $LOG_FILE is missing or empty!"
    exit 1
fi

# Copy the system log to the working directory
cp "$LOG_FILE" syslog.log

# Extract errors and warnings into separate files
grep -i "error" syslog.log > errors.log
grep -i "warning" syslog.log > warnings.log

# Count occurrences
ERROR_COUNT=$(grep -i "error" syslog.log | wc -l)
WARNING_COUNT=$(grep -i "warning" syslog.log | wc -l)

# Find top 3 most common errors
TOP_ERRORS=$(grep -i "error" syslog.log | awk -F'ERROR' '{print $2}' | sort | uniq -c | sort -nr | head -3)

# Create a summary report
REPORT_FILE="log_summary.txt"
{
    echo "Log Analysis Summary Report"
    echo "==========================="
    echo "Total Errors: $ERROR_COUNT"
    echo "Total Warnings: $WARNING_COUNT"
    echo ""
    echo "Top 3 Most Frequent Errors:"
    echo "$TOP_ERRORS"
    echo ""
    echo "Report Generated on: $(date)"
} > "$REPORT_FILE"

# Display summary on terminal
cat "$REPORT_FILE"
