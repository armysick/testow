#!/bin/bash

# Create the directory
mkdir -p random_files

# Loop to create 1000 files
for i in {1..1000}
do
  # Generate a random string (12 characters long)
  rand_str=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 12)
  
  # Create a file with the content
  echo "$rand_str" > "random_files/file_$i.txt"
done

echo "Done. Created 1000 files in the 'random_files' folder."
