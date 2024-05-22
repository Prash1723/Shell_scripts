#!/bin/bash

set -e

#read -p "Directory Path for the video :" location

#cd "$location"

read -p "filename :" vid_file

read -p "New filename :" new_file

ffmpeg -i "$vid_file" -vcodec libx265 -crf 28 "$new_file"
