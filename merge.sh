#!/bin/sh
set -e

ffmpeg -i francais.webm -i anglais.wav \
  -map 0:0 -map 1:0 -c:0 libvpx -c:1 libvorbis \
  anglais.webm
