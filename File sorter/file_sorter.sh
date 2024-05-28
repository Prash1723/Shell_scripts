#!/bin/bash

echo "File location?"

read $path

mv $path+*jpeg $path+*jpg $path+*webp $path+*png $path+random/img/ >> "$1" 2/dev/null

mv $path+*mp4 $path+*mkv $path+*MOV $path+*webm $path+random/vid/ >> "$1" 2/dev/null
