#!/bin/bash

# Check if directory argument is passed
if [ -z "$1" ]; then
  echo "Usage: $0 <log-directory>"
  exit 1
fi

SOURCE_DIR=$1

# Check if the directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Error: Directory '$SOURCE_DIR' does not exist."
  exit 1
fi

# Variables
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_$TIMESTAMP.tar.gz"
ARCHIVE_DIR="$HOME/log_archives"
LOG_FILE="$ARCHIVE_DIR/archive_log.txt"

# Create archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Create tar.gz archive
tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" -C "$SOURCE_DIR" .

# Check if tar succeeded
if [ $? -ne 0 ]; then
  echo "Error: Failed to create archive."
  exit 1
fi

# Log success
echo "[$(date +"%Y-%m-%d %H:%M:%S")] Archived $SOURCE_DIR into $ARCHIVE_NAME" >> "$LOG_FILE"

# Output
echo " Archive created: $ARCHIVE_DIR/$ARCHIVE_NAME"
echo " Log updated at: $LOG_FILE"
