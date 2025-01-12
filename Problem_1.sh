#!/bin/bash

# Define directories
SOURCE_DIR="$HOME/Desktop/test/logs"
ARCHIVE_DIR="$HOME/Desktop/test/logs/archive"

# Ensure the archive directory exists
mkdir -p "$ARCHIVE_DIR"

# Move all .log files to the archive directory
mv "$SOURCE_DIR"/*.log "$ARCHIVE_DIR"

# Compress the moved log files
gzip "$ARCHIVE_DIR"/*.log

# Delete compressed files older than 30 days
find "$ARCHIVE_DIR" -type f -name "*.gz" -mtime +30 -exec rm {} \;

