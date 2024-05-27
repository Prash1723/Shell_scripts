#!/bin/bash

# File to process
input_file="/home/bob/error_log.txt"

# Temporary file for processed content
temp_file="/home/bob/error_log1.txt"

# Read the content of the file, remove newline characters, and add spaces
processed_content=$(cat "$input_file" | tr '\n' ' ')

# Save the processed content to the temporary file
echo "$processed_content" > "$temp_file"

# Rename the temporary file to the original file
mv "$temp_file" "$input_file"

echo "Newlines removed and spaces added in $input_file."
# Remove gaps from text

A script to remove gaps from texts for writing in documents.
