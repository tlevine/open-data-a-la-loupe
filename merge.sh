#!/bin/sh
set -e

ffmpeg -i francais.webm -i anglais.wav \n
  -map 0:0 -map 1:0 \
  -c:v copy -c:a:0 copy
  anglais.webm
