#!/bin/bash
# COPY GITHUB URL FROM CLIPBOARD AND CLONE AS SSH
# XCLIP INSTALLATION REQUIRED 

# Gets the URL from the clipboard
url=$(xclip -o) 

# Checks if the URL is empty
if [ -z "$url" ]; then
  echo "Error: Clipboard is empty."
  exit 1
fi

# Extracts the username and repository name from the URL.
user=$(echo "$url" | cut -d'/' -f4) 
repo=$(echo "$url" | cut -d'/' -f5)

# Creates the SSH URL.
ssh_url="git@github.com:$user/$repo.git"

# Executes the clone via SSH.
git clone "$ssh_url"
