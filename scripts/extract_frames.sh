#!/bin/bash
# Extract frames from BJJ match videos for annotation
# Usage: ./extract_frames.sh <video_file> <output_dir> [fps=1]

VIDEO="$1"
OUTPUT_DIR="$2"
FPS="${3:-1}"  # Default: 1 frame per second

if [ -z "$VIDEO" ] || [ -z "$OUTPUT_DIR" ]; then
    echo "Usage: $0 <video_file> <output_dir> [fps=1]"
    echo "Example: $0 match.mp4 data/raw/ 2"
    exit 1
fi

if [ ! -f "$VIDEO" ]; then
    echo "Error: Video file not found: $VIDEO"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

echo "Extracting frames from $VIDEO at $FPS fps..."
echo "Output directory: $OUTPUT_DIR"

ffmpeg -i "$VIDEO" \
    -vf "fps=$FPS" \
    -q:v 2 \
    "$OUTPUT_DIR/frame_%05d.jpg"

FRAME_COUNT=$(ls -1 "$OUTPUT_DIR"/*.jpg 2>/dev/null | wc -l)
echo "✓ Extracted $FRAME_COUNT frames to $OUTPUT_DIR"
