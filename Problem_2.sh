#!/bin/bash

# Define directories
SOURCE_DIR="$HOME/Desktop/test/problem2"
error_dir="$HOME/Desktop/test/problem2/errors"
current_date=$(date +%Y-%m-%d)
log_file="$error_dir/errors_$current_date.log"

# Ensure the error directory exists
mkdir -p "$error_dir"

# Iterate over files in the source directory
for file in "$SOURCE_DIR"/*; do
    # Check if the file exists and was modified in the last 7 days
    if [ -f "$file" ] && [ "$(find "$file" -mtime -7 -print 2>/dev/null)" ]; then
        # Extract lines containing "ERROR" but not "IGNORE"
        if grep -q 'ERROR' "$file"; then
            grep 'ERROR' "$file" | grep -v 'IGNORE' >> "$log_file"
        fi
    fi
done

echo "Processing completed. Log saved to $log_file."
