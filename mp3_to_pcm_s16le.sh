#!/bin/bash

mkdir wav
for f in *.mp3
do
    ffmpeg -i "$f" -acodec pcm_s16le -ac 2 -ar 44100 "wav/$(basename "$f" .mp3).wav"
done
if [ $? -eq 0 ]; then
    echo "Conversion complete"
else
    echo "Conversion failed"
fi
