#!/bin/bash

set -e

# Video file location
read -p "filename :" vid_file

# Save file to specified location
read -p "New filename :" new_file

# Main Script
ffmpeg -i "$vid_file" -vcodec libx265 -crf 28 "$new_file"
