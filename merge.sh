#!/bin/sh
set -e

ffmpeg -i français.webm -i anglais.ogg \
  -map 0:0 -map 1:0 -c:0 libvpx -c:1 libvorbis \
  anglais.webm
