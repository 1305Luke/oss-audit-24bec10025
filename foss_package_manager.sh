#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Yash Harishchandra Bhondave

PACKAGE=$1

if [ -z "$PACKAGE" ]; then
  echo "Usage: ./script2.sh <package_name>"
  exit 1
fi

# ---- Check installation ----
if rpm -q $PACKAGE &>/dev/null; then
  echo "$PACKAGE is installed."
  rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
else
  echo "$PACKAGE is NOT installed."
fi

# ---- Case statement ----
case $PACKAGE in
httpd) echo "Apache: the web server that built the open internet" ;;
mysql) echo "MySQL: open source at the heart of apps" ;;
firefox) echo "Firefox: privacy-first open web browser" ;;
vlc) echo "VLC: plays everything, respects freedom" ;;
bash) echo "Bash: the soul of Linux scripting" ;;
*) echo "Open source software empowers users worldwide." ;;
esac
