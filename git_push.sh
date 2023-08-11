#!/bin/bash

# Ask user for commit message
read -p "Enter commit message: " commit_message

# Execute git commands
git add .
git commit -m "$commit_message"
git push origin main
