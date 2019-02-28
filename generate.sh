#!/usr/bin/env bash
set -e

TEMPLATE="./template.json"

if [ -z "$3" ]; then
  echo "generate service stage region";
  exit 1;
fi

SERVICE="$1"
STAGE="$2"
REGION="$3"

OUTPUT=$(cat "$TEMPLATE")
OUTPUT=$(echo "$OUTPUT" | sed "s/\[SERVICE\]/$SERVICE/g")
OUTPUT=$(echo "$OUTPUT" | sed "s/\[STAGE\]/$STAGE/g")
OUTPUT=$(echo "$OUTPUT" | sed "s/\[REGION\]/$REGION/g")

echo "$OUTPUT"
