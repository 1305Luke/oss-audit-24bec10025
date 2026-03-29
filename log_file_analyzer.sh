#!/bin/bash

# Script 4: Log File Analyzer
# Author: Yash Harishchandra Bhondave

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# ---- Check file exists ----
if [ ! -f "$LOGFILE" ]; then
  echo "Error: File $LOGFILE not found."
  exit 1
fi

# ---- Retry if empty (do-while style) ----
while true; do
  if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Waiting..."
    sleep 2
  else
    break
  fi
done

# ---- Count keyword ----
while IFS= read -r LINE; do
  if echo "$LINE" | grep -iq "$KEYWORD"; then
    COUNT=$((COUNT + 1))
  fi
done <"$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# ---- Last 5 matches ----
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
