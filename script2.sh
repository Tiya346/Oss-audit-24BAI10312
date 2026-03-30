#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Tiya Mehta (24BAI10312) | Course: Open Source Software

# --- Variables ---
PACKAGE="git" # The chosen open-source software

echo "=================================================="
echo "          FOSS Package Inspector"
echo "=================================================="

# --- Installation Check ---
# Using if-then-else and dpkg -l to check if the package is installed.
# We pipe the output to grep -q to quietly search for the exact package name.
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "[SUCCESS] '$PACKAGE' is currently installed."
    echo "--------------------------------------------------"
    echo "Package Details:"
    # Using pipe (|) and grep to filter only the relevant details
    dpkg -s $PACKAGE | grep -E '^Version|^Maintainer|^Description' | head -n 3
else
    echo "[WARNING] '$PACKAGE' is NOT installed on this system."
fi

echo "--------------------------------------------------"
echo "Open Source Philosophy Note:"

# --- Purpose Description ---
# Using a case statement to match the package name and print a specific note.
case $PACKAGE in
    git) 
        echo "Git: The distributed version control system that powers collaborative open-source development globally." 
        ;;
    vlc) 
        echo "VLC: The universal media player that proves open-source can handle almost any format." 
        ;;
    firefox) 
        echo "Firefox: Championing a free, open, and privacy-respecting web for everyone." 
        ;;
    docker)
        echo "Docker: Revolutionizing how we build, ship, and run applications through containerization."
        ;;
    *) 
        echo "Unknown package: Open source software empowers users with freedom, transparency, and control." 
        ;;
esac
echo "=================================================="