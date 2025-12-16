#!/usr/bin/env bash

set -euo pipefail

# Timestamp: YYYYMMDDhhmmss
TIMESTAMP=$(date +"%Y%m%d%H%M%S")

# Output directory (relative to script location)
OUTPUT_DIR="../database_updates"

# Output filename
OUTPUT="${OUTPUT_DIR}/${TIMESTAMP}_world.sql"

# Ensure output directory exists
mkdir -p "$OUTPUT_DIR"

# Concatenate SQL files, excluding previously generated world updates
for f in *.sql; do
  [[ "$f" == *_world.sql ]] && continue

  echo "-- =============================================="
  echo "-- FILE: $f"
  echo "-- GENERATED: $TIMESTAMP"
  echo "-- =============================================="
  cat "$f"
  echo
done > "$OUTPUT"

echo "Created $OUTPUT"
