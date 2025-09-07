#!/bin/bash
THRESHOLD=500

FREE_PAGES=$(vm_stat | grep "Pages free" | awk '{print $3}' | sed 's/\.//')
FREE_MB=$((FREE_PAGES * 4096 / 1024 / 1024))

echo "Free memory: ${FREE_MB} MB"

if [ "$FREE_MB" -lt "$THRESHOLD" ]; then
    echo "Warning: Low memory! Only ${FREE_MB} MB free."
fi

