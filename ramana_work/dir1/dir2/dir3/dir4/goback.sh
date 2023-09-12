#!/bin/bash

# Define the number of directories to go back (change this value as needed)
directories_to_go_back=2

# Loop to navigate back to parent directories
for ((i = 0; i < directories_to_go_back; i++)); do
  # Use the "cd" command with ".." to go back one directory
  cd ..
done

# Display the current directory after navigating
echo "Current directory: $(pwd)"

# Create a test file
touch testfile.txt
