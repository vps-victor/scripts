#!/bin/sh
# Pretty RED Hostname script
RED_START='\033[0;33m'
RED_END='\033[0m'
echo -e "My hostname is ${RED_START}`hostname`${RED_END}"
exit 99
