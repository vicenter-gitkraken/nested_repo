#!/bin/bash

# Initialize a Git repository
git init

# Starting path for folders
path="level"

# Create 100 nested folders
for i in $(seq 1 100); do
  # Create the current folder
  mkdir -p "$path$i"

  # Create a text file inside the folder
  echo "This is the file for level $i" > "$path$i/level_$i.txt"

  # Advance to the next level of the path
  path="$path$i/level"
done

# Add all files and commit the changes in Git
git add .
git commit -m "Initialize repository and create 100 nested folders with text files and subfolders"

echo "Script executed successfully."
