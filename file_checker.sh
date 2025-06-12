#!/usr/bin/bash

# Check if an argument (filename) is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILENAME="$1"

# Check if the file exists
if [ -e "$FILENAME" ]; then
    echo "File '$FILENAME' exists."
else
    echo "File '$FILENAME' does not exist."
fi
