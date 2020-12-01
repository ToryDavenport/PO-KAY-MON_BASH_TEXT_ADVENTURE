#!/bin/bash

#Look for update
echo ""
sudo apt update -q -y
#After update completes, ask user to press enter to continue
read -p "Press enter to continue..."
#Look for upgrade
sudo apt upgrade -q -y

# Clean up old packages
sudo apt autoremove -q -y