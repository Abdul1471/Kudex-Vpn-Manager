#!/bin/bash

# ----------------------------------
# Colors for our menu
# ----------------------------------
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
NC='\e[0m' # This means "No Color" (resets the text color)

# ----------------------------------
# Clear the screen and say hello
# ----------------------------------
clear
echo -e "${GREEN}Welcome to My VPN Manager!${NC}"
echo -e "${CYAN}---------------------------------${NC}"
echo -e "1. Install VPN Services (Coming soon)"
echo -e "2. Exit"
echo -e "${CYAN}---------------------------------${NC}"

echo -ne "${BLUE}Choose an option: ${NC}"
read user_choice

if [ "$user_choice" == "2" ]; then
    echo -e "${RED}Exiting. Goodbye!${NC}"
    exit 0
else
    echo "You chose something else! We will build this part later."
fi
