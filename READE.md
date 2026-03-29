# Open Source Audit - Capstone Project

**Student Name:** Luke  t
**Roll Number:** 24BEC10025  
**Chosen Software:** Python  
**Course:** Open Source Software (OSS NGMC)  
**Slot:** CR-018

---

## Project Overview

This capstone project explores the philosophy, ecosystem, and practical usage of open source software by examining Python as a case study. The project includes:

- Analysis of Python's origin, philosophy, and licensing (PSFL)
- Examination of open source ethics and corporate involvement
- Investigation of Python's dependencies and infrastructure
- Five shell scripts demonstrating Linux system administration skills

---

## Repository Structure
open-source-audit/
├── README.md
├── scripts/
│ ├── script1_system_identity.sh
│ ├── script2_package_inspector.sh
│ ├── script3_disk_auditor.sh
│ ├── script4_log_analyzer.sh
│ └── script5_manifesto_generator.sh
└── project_report.pdf

---

## Script Descriptions

### Script 1: System Identity Report (`script1_system_identity.sh`)

Displays basic system information including kernel version, current user, uptime, distribution name, and date. Includes a license philosophy message.

**Concepts demonstrated:** Variables, command substitution, system commands (`uname`, `whoami`, `uptime`), `echo` output formatting.

Script 1: System Identity Report
This script generates a comprehensive system report displaying key information about the Linux environment. It captures the kernel version, current logged-in user, system uptime, Linux distribution name, and current date. The script then formats this information into a clean, readable output. Additionally, it includes a license philosophy message about Python's PSFL license, emphasizing the open source values of freedom and sharing. This script serves as an introduction to basic system information gathering and demonstrates the use of variables and command substitution in shell scripting.

# Script 2: FOSS Package Inspector


This script accepts a package name as a command-line argument and checks whether that package is installed on the system. It automatically detects whether the system uses rpm (Red Hat-based) or dpkg (Debian-based) package management and displays relevant package details including version, license, and summary information. The script then uses a case statement to print a philosophical note about the package, highlighting its significance in the open source ecosystem. For Python, it shares the story of Guido van Rossum's creation; for other packages like Apache, MySQL, Firefox, VLC, or Git, it provides context about their origins and impact. This script demonstrates command-line argument handling, conditional logic, package management integration, and case statement usage.


# Script 3: Disk and Permission Auditor
This script performs an audit of important system directories by iterating through a predefined list that includes /etc, /var/log, /home, /usr/bin, and /tmp. For each directory that exists, it retrieves and displays the permissions, owner, group, and disk usage. If a directory does not exist, the script reports that fact. The script then checks for Python configuration directories to verify Python's presence and permissions. This demonstrates the use of arrays for storing directory lists, for loops for iteration, conditional checks with if-then statements, and command substitution with du, ls, awk, and cut to extract specific information from command outputs.
# Script 4: Log File Analyzer
This script reads a log file line by line and counts how many lines contain a specified keyword (defaulting to "error" if none is provided). It accepts the log file path and optional keyword as command-line arguments, validates that the file exists and is readable, and then processes the file using a while read loop. For each line, it checks for the keyword using case-insensitive grep, increments a counter, and stores matching lines. After processing, it displays the total count and shows the last 5 matching lines. If no matches are found, it offers the user the option to try a different keyword interactively. This script demonstrates file handling, while loops with read, counters, conditional logic, and user interaction.
# Script 5: Open Source Manifesto Generator 
This interactive script engages the user by asking three questions: what open source tool they use daily, what freedom means to them, and what they plan to build and share. It captures these inputs using the read -p command, then generates a personalized manifesto text file named manifesto_<username>.txt. The manifesto includes the current date, the user's responses woven into a structured statement about open source values, and a closing dedication to the open source community. The script also includes a commented alias concept for creating a quick command to regenerate the manifesto. This demonstrates interactive input handling, variable assignment, file redirection with cat and heredoc, and the use of the date and whoami commands for dynamic content generation.
