#!/bin/bash


FILE="report.txt"

echo "=== FILE MANAGER ==="
echo "Working with file: $FILE"
echo ""

if [ -f "$FILE" ]; then
    echo "File exists, removing..."
    rm "$FILE"
    
  
    if [ ! -f "$FILE" ]; then
        echo "File removed"
    else
        echo "Error removing file"
    fi
else
    echo "File not found, creating..."
    touch "$FILE"
    
  
    if [ -f "$FILE" ]; then
        echo " Empty file created: $FILE"
        ls -l "$FILE"
    else
        echo "Error creating file"
    fi
fi

echo ""
echo "status:"
ls -l "$FILE" 2>/dev/null || echo "File doesn’t exist"

