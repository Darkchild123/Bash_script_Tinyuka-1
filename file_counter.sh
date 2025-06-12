#!/usr/bin/bash
echo "use Ctrl+c (^c) to cancel/exit"
echo ""

# my script asks for your input 
read -p "Enter the absolute path to the directory: " dir

# Check if input starts with '/' (i.e is an absolute path)
if [[ ! "$dir" =~ ^/ ]]; then
  echo "Not an absolute directory"
  exit 1
fi

# Check if it's a valid directory
if [ ! -d "$dir" ]; then
  echo "Not an absolute directory"
  exit 1
fi

# Count the number of files in that partucular directory excluding the child directories 
file_count=$(find "$dir" -maxdepth 1 -type f | wc -l)

echo "Number of files in '$dir': $file_count"
