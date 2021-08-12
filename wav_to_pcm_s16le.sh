#!/bin/bash

mkdir wav
for f in *.wav
do
    ffmpeg -i "$f" -acodec pcm_s16le -ac 2 -ar 44100 "wav/$f"
done
