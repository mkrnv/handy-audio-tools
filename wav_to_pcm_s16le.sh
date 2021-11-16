#!/bin/bash

mkdir wav
for f in *.wav
do
    ffmpeg -i "$f" -acodec pcm_s16le -ac 2 -ar 44100 "wav/$f" -loglevel quiet
    echo "[wav * -> wav pcm_s16le] Converted: $f"
done
if [ $? -eq 0 ]; then
    echo "Conversion complete"
else
    echo "Conversion failed"
fi
