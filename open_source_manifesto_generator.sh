#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Yash Harishchandra Bhondave

echo "Answer three questions to generate your manifesto."
echo ""

# ---- Input ----
read -p "1. Open-source tool you use daily: " TOOL
read -p "2. What does freedom mean to you? " FREEDOM
read -p "3. What will you build and share? " BUILD

# ---- Variables ----
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# ---- Write file ----
echo "----------- Open Source Manifesto -----------" >"$OUTPUT"
echo "Date: $DATE" >>"$OUTPUT"
echo "" >>"$OUTPUT"

echo "I believe in open source." >>"$OUTPUT"
echo "Tools like $TOOL prove collaboration beats control." >>"$OUTPUT"
echo "Freedom means $FREEDOM — the ability to create without limits." >>"$OUTPUT"
echo "I will build $BUILD and share it with the world." >>"$OUTPUT"
echo "Because knowledge grows when shared." >>"$OUTPUT"

# ---- Alias concept (comment) ----
# alias manifesto='bash script5.sh'

echo ""
echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
