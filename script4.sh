#!/bin/bash
# Script 4: Log File Analyzer
# Author: Tiya Mehta (24BAI10312) | Course: Open Source Software
# Usage: ./script4.sh <logfile_path> [keyword]

# --- Variables & Arguments ---
LOGFILE=$1
# Uses the second argument as the keyword, but defaults to 'error' if left blank
KEYWORD=${2:-"error"} 
COUNT=0

echo "=================================================="
echo "               Log File Analyzer"
echo "=================================================="

# --- Do-While Style Retry ---
# We loop until the user provides a file that exists and is not empty (-s).
while [ -z "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; do
    echo "[!] File '$LOGFILE' not found or is empty."
    read -p "Please enter a valid log file path: " LOGFILE
done

echo "Analyzing '$LOGFILE' for keyword: '$KEYWORD'..."
echo "--------------------------------------------------"

# --- Line-by-Line Analysis ---
# Using a while-read loop to safely process the file line by line
while IFS= read -r LINE; do
    # if-then statement to check if the current line contains the keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1)) # Increment the counter variable
    fi
done < "$LOGFILE"

# --- Output Summary ---
echo "Summary: Keyword '$KEYWORD' found $COUNT times."

# --- Print Last 5 Matches ---
# If we found at least one match, display the final few occurrences
if [ $COUNT -gt 0 ]; then
    echo "--------------------------------------------------"
    echo "Last 5 matching lines:"
    # Combining grep and tail to easily fetch the final matches
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
echo "=================================================="