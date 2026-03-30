#!/bin/bash
# Script 1: System Identity Report
# Author: Tiya Mehta (24BAI10312) | Course: Open Source Software

# --- Variables ---
# Storing static text in variables for easy updating
STUDENT_NAME="Tiya Mehta"
REG_NUMBER="24BAI10312"
SOFTWARE_CHOICE="Git" 

# --- System info ---
# Using command substitution $() to run commands and save their output
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
HOME_DIR=$HOME
CURRENT_DATE=$(date +"%A, %B %d, %Y - %T")

# Fetching the distribution name from the OS release file
# grep grabs the specific line, and cut isolates the name between the quotes
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2)

# --- Display ---
# Using echo to format the output neatly into a readable report
echo "=================================================="
echo "      System Identity Report — $STUDENT_NAME"
echo "      Registration Number    — $REG_NUMBER"
echo "=================================================="
echo "System Date/Time  : $CURRENT_DATE"
echo "Distribution      : $DISTRO"
echo "Kernel Version    : $KERNEL"
echo "--------------------------------------------------"
echo "Logged-in User    : $USER_NAME"
echo "Home Directory    : $HOME_DIR"
echo "System Uptime     : $UPTIME"
echo "--------------------------------------------------"
# Git is licensed under GPLv2, just like the Linux Kernel
echo "License Info      : The $SOFTWARE_CHOICE version control system is"
echo "                    released under the GNU General Public License v2.0."
echo "=================================================="