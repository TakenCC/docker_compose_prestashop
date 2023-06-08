#!/bin/bash

# Check if all required arguments were provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 <file> <search_term> <replacement_term>"
  exit 1
fi

file="$1"
search_term="$2"
replacement_term="$3"

# Check if the specified file exists
if [ ! -f "$file" ]; then
  echo "The specified file does not exist"
  exit 1
fi

# Replace occurrences of the search term with the replacement term in the specified file
sed -i "s/${search_term}/${replacement_term}/g" "$file"