#!/bin/bash

set -e

echo "Job started: $(date)"

DATABASE="testing"
DATE=$(date +%Y%m%d_%H%M%S)
FILE="/backup/$DATABASE-$DATE.sql"

cd /root
pg_dump --no-password -h db -U postgres $DATABASE -f "$FILE"
gzip "$FILE"

echo "Job finished: $(date)"
