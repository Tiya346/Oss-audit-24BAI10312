# Oss-audit-24BAI10312
# OSS Audit Project

**Student Name:** Tiya Mehta  
**Roll Number:** 24BAI10312  
**Chosen Software:** Git  

---

## Project Overview
This project is an **Open Source Audit** aimed at exploring Linux systems and open-source software through hands-on shell scripting. The report and scripts together provide insights into:

- The origin and philosophy of open-source software  
- Licensing and ethical considerations  
- Linux footprint and configuration  
- Open-source ecosystem mapping  
- Comparison with proprietary alternatives  

The project consists of **five Bash scripts** that demonstrate Linux system analysis, software inspection, log auditing, and generating open-source philosophy statements.

---

## Scripts Overview

### 1. System Identity Report (`script1.sh`)
Displays a welcome-style screen with system details:

- Linux distribution and kernel version  
- Current logged-in user and home directory  
- System uptime and current date/time  
- License information for the OS  

**Concepts used:** variables, `echo`, command substitution, basic formatting  

**Run:**
```bash
bash script1.sh
```
### 2. FOSS Package Inspector (script2.sh)

Checks whether the chosen software (Git) is installed and prints version and license info. Includes a case statement to provide a brief description of the software philosophy.

**Concepts used:** if-then-else, case statements, dpkg -l or rpm -q, grep

**Run:**
```bash
bash script2.sh
```

### 3. Disk and Permission Auditor (script3.sh)

Audits important system directories:

Checks permissions, ownership, and size of key directories
Validates the existence and permissions of Git configuration directory

**Concepts used:** for loops, ls -ld, du, awk

**Run:**
```bash
bash script3.sh
```
### 4. Log File Analyzer (script4.sh)

Analyzes log files for a keyword (default: error) and counts its occurrences. Also prints the last 5 matching lines.

**Concepts used:** while read loop, conditional statements, counters, command-line arguments

**Run:**
```bash
sudo bash script4.sh /var/log/syslog error
```
### 5. Open Source Manifesto Generator (script5.sh)

Interactively generates a personalized open-source philosophy statement:

Prompts user for a tool, their idea of freedom, and a project to share
Composes a manifesto and saves it to a text file

**Concepts used:** read input, string concatenation, writing to files, date command

**Run:**
```bash
bash script5.sh
```
