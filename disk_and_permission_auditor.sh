#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Yash Harishchandra Bhondave

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
  if [ -d "$DIR" ]; then
    PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
    SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
    echo "$DIR => Permissions: $PERMS | Size: $SIZE"
  else
    echo "$DIR does not exist"
  fi
done

# ---- Extra: Check config directory of a software ----
SOFTWARE_DIR="/etc/nginx"

echo ""
echo "Checking config directory: $SOFTWARE_DIR"

if [ -d "$SOFTWARE_DIR" ]; then
  ls -ld $SOFTWARE_DIR
else
  echo "Config directory not found."
fi
