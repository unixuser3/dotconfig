#!/bin/bash

# Set your GitHub repository details
repo_owner="unixuser3"
repo_name="dotconfig"

# Create the repository if it doesn't exist
curl -u "$repo_owner" https://api.github.com/user/repos -d '{"name":"'$repo_name'"}'

# Initialize a Git repository in the current directory (assuming you're in .config)
git init

# Add all files in the current directory
git add .

# Commit the changes
git commit -m "Initial dotfiles commit"

# Add the remote repository
git remote add origin https://github.com/$repo_owner/$repo_name.git

# Push the changes to the remote repository
git push -u origin master
