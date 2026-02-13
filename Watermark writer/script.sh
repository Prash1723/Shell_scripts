#!/bin/bash

set -e

for i in $( ls ~/Pictures/watermark_files/input/ );
do
	image=~/Pictures/watermark_files/input/$i
	wm_image=~/Pictures/watermark_files/output/$i
	watermark="watermark"
	convert "$image" -pointsize 40 \
		-gravity NorthWest -pointsize 20 -fill "rgba(255,255,255,0.5)" -annotate +10+10 "$watermark" \
		-gravity NorthEast -pointsize 20 -fill "rgba(255,255,255,0.5)" -annotate +10+10 "$watermark" \
		-gravity Center -pointsize 20 -fill "rgba(255,255,255,0.5)" -annotate +10+10 "$watermark" \
		-gravity SouthWest -pointsize 20 -fill "rgba(255,255,255,0.5)" -annotate +10+10 "$watermark" \
		-gravity SouthEast -pointsize 20 -fill "rgba(255,255,255,0.5)" -annotate +10+10 "$watermark" \
		"$wm_image"
	echo "$wm_image watermarked"
done
