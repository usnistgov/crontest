#!/bin/bash

set -e

echo "Job started: $(date)"
echo "Backing up $PGDB"

DATE=$(date +%Y%m%d_%H%M%S)
FILE="/dump/$PREFIX-$DATE.sql"

pg_dump -h db -U "$PGUSER" -f "$FILE" -d "$PGDB"
gzip "$FILE"

find . -mtime +3 -name '*.gz' -execdir rm -- '{}' \;

echo "Job finished: $(date)"
