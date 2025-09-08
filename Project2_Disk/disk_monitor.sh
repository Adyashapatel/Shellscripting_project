#!/bin/bash

THRESHOLD=90   # set warning level (in %)

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Current disk usage: $USAGE%"

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "⚠️ Warning: Disk usage is above ${THRESHOLD}%!"
else
    echo "✅ Disk usage is under control."
fi

