#!/bin/bash

sh "${BASH_SOURCE%/*}/mp3_to_pcm_s16le.sh"

echo "Cleaning wav/ & old *.mp3 files"

mv wav/* .
rm *.mp3
rm -r wav/

python -c "
import os, pprint
d = sorted(os.listdir())

print('File names:')
print('\n'.join(d))

print('\n')

print('Track names:')
print('\n'.join(map(lambda x: x[5:-4], d)))"
