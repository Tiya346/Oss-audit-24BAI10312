#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Tiya Mehta (24BAI10312) | Course: Open Source Software

# --- Variables ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
SOFTWARE="Git"
GIT_CONFIG_DIR="$HOME/.config/git"
GIT_CONFIG_FILE="$HOME/.gitconfig"

echo "=================================================="
echo "          Disk and Permission Auditor"
echo "=================================================="

# --- Directory Audit Loop ---
# Using a for loop to iterate through the array of directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # ls -ld gets directory details; awk extracts permissions ($1), owner ($3), group ($4)
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # du -sh gets the human-readable size; 2>/dev/null hides 'permission denied' errors
        # cut -f1 isolates just the size value
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Perms/Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "--------------------------------------------------"
echo "          $SOFTWARE Configuration Audit"
echo "--------------------------------------------------"

# --- Software Config Check ---
# Checking if Git's configuration directory or file exists to print its permissions
if [ -d "$GIT_CONFIG_DIR" ]; then
    PERMS=$(ls -ld "$GIT_CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "$GIT_CONFIG_DIR (Directory) => Perms/Owner: $PERMS"
elif [ -f "$GIT_CONFIG_FILE" ]; then
    PERMS=$(ls -ld "$GIT_CONFIG_FILE" | awk '{print $1, $3, $4}')
    echo "$GIT_CONFIG_FILE (File) => Perms/Owner: $PERMS"
else
    echo "No local $SOFTWARE configuration directory or file found."
fi
echo "=================================================="