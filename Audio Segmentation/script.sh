#!/bin/bash

INPUT_FILE="$1"
SEGMENT_TIME="$2" # Duration of each segment in seconds (e.g., 600 for 10 minutes)
OUTPUT_DIR="${INPUT_FILE%.*}-segments"
OUTPUT_PATTERN="part_%03d.${INPUT_FILE##*.}"

if [ -z "$INPUT_FILE" ] || [ -z "$SEGMENT_TIME" ]; then
    echo "Usage: $0 <input_audio_file> <segment_duration_seconds>"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

echo "Splitting $INPUT_FILE into segments of $SEGMENT_TIME seconds..."

ffmpeg -i "$INPUT_FILE" -f segment -segment_time "$SEGMENT_TIME" -c copy "$OUTPUT_DIR/$OUTPUT_PATTERN"

echo "Done. Segments saved in $OUTPUT_DIR/"
