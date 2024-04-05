#!/bin/bash

# Alternative Docker PRUNE command for older Docker API versions.
# Colored & Bolded version

# Color codes
BOLD=$(tput bold)
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
RESET=$(tput sgr0)

# Step 1 - Would you like to remove containers? (y OR n)
read -p "${BOLD}${GREEN}Step 1 - Would you like to remove containers? (y/n): ${RESET}" remove_containers
if [ "$remove_containers" == "y" ]; then
    # Remove all Docker containers
    if [ "$(sudo docker ps -aq)" ]; then
        sudo docker rm -f $(sudo docker ps -aq)
        echo "${BOLD}All containers have been removed successfully.${RESET}"
    else
        echo "${BOLD}All clear, there were no running containers.${RESET}"
    fi
else
    echo "${BOLD}Skipping container removal.${RESET}"
fi

# Step 2 - Would you like to remove volumes? (y OR n)
read -p "${BOLD}${GREEN}Step 2 - Would you like to remove volumes? (y/n): ${RESET}" remove_volumes
if [ "$remove_volumes" == "y" ]; then
    # Remove all Docker volumes
    if [ "$(sudo docker volume ls -q)" ]; then
        sudo docker volume rm $(sudo docker volume ls -q)
        echo "${BOLD}All volumes have been removed successfully.${RESET}"
    else
        echo "${BOLD}All clear, there were no Docker volumes.${RESET}"
    fi
else
    echo "${BOLD}Skipping volume removal.${RESET}"
fi

# Step 3 - Would you like to remove images? (y OR n)
read -p "${BOLD}${GREEN}Step 3 - Would you like to remove images? (y/n): ${RESET}" remove_images
if [ "$remove_images" == "y" ]; then
    # Remove all Docker images
    if [ "$(sudo docker images -q)" ]; then
        sudo docker rmi -f $(sudo docker images -q)
        echo "${BOLD}All images have been removed successfully.${RESET}"
    else
        echo "${BOLD}All clear, there were no Docker images.${RESET}"
    fi
else
    echo "${BOLD}Skipping image removal.${RESET}"
fi
