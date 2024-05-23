#!/bin/bash

echo -n "Path to the file :"

read $path

# Read text from a file
text=$(cat $path)

# Remove numbers and brackets using sed
filtered_text=$(echo "$text" | sed 's/[0-9]//g; s/[()]//g; s/\[\|\]//g')

# Display the filtered text
echo "$filtered_text"
