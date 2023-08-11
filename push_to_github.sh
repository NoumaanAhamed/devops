#!/bin/bash

# Navigate to the repository directory
cd ~/repos/devops/

# Add, commit, and push changes
git add resourceTracker
git commit -m "Update resourceTracker $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main
