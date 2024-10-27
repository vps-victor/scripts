#!/bin/bash
# The XSEL tool must be installed for the code to work
# Checks if any argument was passed (filename)
if [ $# -gt 0 ]; then
  filename="$1"
else
  read -p "Enter the filename (with extension): " filename
fi

# Reads the clipboard content using xsel (adjust if necessary)
content=$(xsel -o)

# Creates the file and writes the content
echo "$content" > "$filename"

echo "File '$filename' created successfully!"
