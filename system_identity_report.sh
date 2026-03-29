#!/bin/bash

# Script 1: System Identity Report
# Author: Yash Harishchandra Bhondave

# --- Variables ---
STUDENT_NAME="Yash Harishchandra Bhondave"
SOFTWARE_CHOICE="Linux"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home    : $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Date    : $DATE"
echo ""
echo "License : Most Linux distributions use the GNU General Public License (GPL)"
