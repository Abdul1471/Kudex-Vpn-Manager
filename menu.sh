#!/bin/bash

# Colors
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
ORANGE='\e[0;33m'
RED='\e[0;31m'
NC='\e[0m'

# System Information Variables
UPTIME=$(uptime -p | sed 's/up //')
RAM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
RAM_USED=$(free -m | awk '/Mem:/ {print $3}')
OS_NAME=$(cat /etc/os-release | grep -w PRETTY_NAME | cut -d '"' -f 2)

# This is our Menu Function
show_menu() {
    clear
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "                 ${ORANGE}LICENSE INFORMATION${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e " ${CYAN}Client       : ${GREEN}VPS${NC}"
    echo -e " ${CYAN}Expiry Date  : ${GREEN}14-11-2026${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    
    echo -e "                   ${ORANGE}VPS INFORMATION${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e " ${CYAN}Server Uptime    = ${GREEN}${UPTIME}${NC}"
    echo -e " ${CYAN}Operating System = ${GREEN}${OS_NAME}${NC}"
    echo -e " ${CYAN}Total Ram        = ${GREEN}${RAM_TOTAL} MB${NC}"
    echo -e " ${CYAN}Total Used Ram   = ${GREEN}${RAM_USED} MB${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    
    echo -e " ${GREEN}SSH       VMESS       VLESS       TROJAN${NC}"
    echo -e "  0           0           0           0"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    
    echo -e " ${CYAN}[01] SSH                  [05] SETTING${NC}"
    echo -e " ${CYAN}[02] VMESS                [06] BACKUP${NC}"
    echo -e " ${CYAN}[03] VLESS                [07] DOMAIN & SSL${NC}"
    echo -e " ${CYAN}[04] TROJAN               [08] CHECK RUNNING${NC}"
    echo -e " ${CYAN}                          [00] EXIT SYSTEM${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    
    echo -ne " ${GREEN}Select menu : ${NC}"
    read user_choice
    
    case $user_choice in
        01)
            echo "SSH Menu coming soon..."
            sleep 2
            show_menu # This calls the function again to reload the menu!
            ;;
        00)
            echo -e "${RED}Exiting System...${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid option! Try again.${NC}"
            sleep 2
            show_menu
            ;;
    esac
}

# This command actually starts the function when you run the script
show_menu
