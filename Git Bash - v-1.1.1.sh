#!/bin/bash

# Prompt user for commit text
read -p "Enter Commit Text: " input

# If input is empty, exit
if [[ -z "$input" ]]; then
    echo "You must enter a commit message!"
    exit 1
fi

# Get current branch name and datetime
branch=$(git rev-parse --abbrev-ref HEAD)
dateTime=$(date "+%Y%m%d %H:%M:%S")
message="$input  $dateTime"

# Show commit info
echo "Branch: $branch"
echo "Commit message: $message"

# Run git commands
git add .
git commit -m "$message"
git pull --all
git push --all

# Done
echo "Process Complete. Press Enter to exit..."
read