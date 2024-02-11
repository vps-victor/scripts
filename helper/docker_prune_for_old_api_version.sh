#!/bin/bash

# Step 1 - Would you like to remove containers? (y OR n)
read -p "Step 1 - Would you like to remove containers? (y/n): " remove_containers
if [ "$remove_containers" == "y" ]; then
    # Remove all Docker containers
    if [ "$(sudo docker ps -aq)" ]; then
        sudo docker rm -f $(sudo docker ps -aq)
        echo "All containers have been removed successfully."
    else
        echo "All clear, there were no running containers."
    fi
else
    echo "Skipping container removal."
fi

# Step 2 - Would you like to remove volumes? (y OR n)
read -p "Step 2 - Would you like to remove volumes? (y/n): " remove_volumes
if [ "$remove_volumes" == "y" ]; then
    # Remove all Docker volumes
    if [ "$(sudo docker volume ls -q)" ]; then
        sudo docker volume rm $(sudo docker volume ls -q)
        echo "All volumes have been removed successfully."
    else
        echo "All clear, there were no Docker volumes."
    fi
else
    echo "Skipping volume removal."
fi

# Step 3 - Would you like to remove images? (y OR n)
read -p "Step 3 - Would you like to remove images? (y/n): " remove_images
if [ "$remove_images" == "y" ]; then
    # Remove all Docker images
    if [ "$(sudo docker images -q)" ]; then
        sudo docker rmi -f $(sudo docker images -q)
        echo "All images have been removed successfully."
    else
        echo "All clear, there were no Docker images."
    fi
else
    echo "Skipping image removal."
fi

