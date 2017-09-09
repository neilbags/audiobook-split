#!/bin/bash
if [ $# -ne 2 ]; then
  echo "Usage: $0 <input> <output base-name>"
  exit 1
fi
ffmpeg -i "$1" -f segment -segment_time 900 -c:a libmp3lame -ac 1 -b:128k -o ${2// /_}_%03d.mp3
