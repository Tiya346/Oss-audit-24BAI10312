#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Tiya Mehta (24BAI10312) | Course: Open Source Software

# Aliases are usually set in ~/.bashrc, so we will use the standard command here.

echo "=================================================="
echo "       The Open Source Manifesto Generator"
echo "=================================================="
echo "Answer three quick questions to generate your philosophy."
echo ""

# Using read -p to interactively prompt the user and store their input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Capturing the current date
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating manifesto..."
echo "--------------------------------------------------"

# --- File Writing & String Concatenation ---
# Using > to create or overwrite the file with the header
echo "Open Source Manifesto — Generated on $DATE" > "$OUTPUT"

# Using >> to append the rest of the lines without overwriting the previous ones
echo "--------------------------------------------------" >> "$OUTPUT"
echo "I believe that the foundation of true innovation is $FREEDOM." >> "$OUTPUT"
echo "By relying on powerful, community-driven tools like $TOOL, we can break down barriers." >> "$OUTPUT"
echo "My ultimate goal is to build $BUILD and share it freely with the world." >> "$OUTPUT"

# Displaying the final result
echo "Success! Your manifesto has been saved to: $OUTPUT"
echo "Here is what it says:"
echo ""
cat "$OUTPUT"
echo "=================================================="