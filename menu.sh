#!/bin/bash

# Colors for our menu
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
NC='\e[0m'

# Fetch System Information
UPTIME=$(uptime -p | sed 's/up //')
RAM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
RAM_USED=$(free -m | awk '/Mem:/ {print $3}')

# Display the Menu
clear
echo -e "${CYAN}=========================================${NC}"
echo -e "${GREEN}          VPS INFORMATION                ${NC}"
echo -e "${CYAN}=========================================${NC}"
echo -e " Server Uptime    = ${GREEN}${UPTIME}${NC}"
echo -e " Total Ram        = ${GREEN}${RAM_TOTAL} MB${NC}"
echo -e " Total Used Ram   = ${GREEN}${RAM_USED} MB${NC}"
echo -e "${CYAN}=========================================${NC}"

echo -e " [00] EXIT SYSTEM"
echo -e "${CYAN}=========================================${NC}"
echo -ne " ${GREEN}Select menu : ${NC}"
read user_choice

if [ "$user_choice" == "00" ]; then
    echo -e "${RED}Exiting...${NC}"
    exit 0
else
    echo "We will add more options soon!"
fi
