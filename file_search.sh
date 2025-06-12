#!/usr/bin/bash 


if [ $# -eq 0 ]; then
    echo "wrong command!"
    echo "type the filename should come after $0"
    echo "EXAMPLE: $0 examplefile.txt"
    exit 1
fi

FILENAME="$1" 
if [ -e "$FILENAME" ]; then
    echo "File '$FILENAME' Exists!"
else
    echo "File '$FILENAME' Does Not Exist!"
fi
