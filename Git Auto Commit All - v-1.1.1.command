#!/bin/bash

# Prompt for commit message
read -p "Enter Commit Text: " input

# Check for empty input
if [[ -z "$input" ]]; then
    echo "You must enter a commit message!"
    exit 1
fi

# Get date and time
dateTime=$(date "+%Y%m%d %H%M%S")

# Create commit message
message="$input  $dateTime"

# Print commit command (for display only)
echo "git commit -m \"$message\""

# Run Git commands
git add .
git commit -m "$message"
git pull --all
git push --all

# Completion message
echo "Process Complete. Press Enter to exit..."
read