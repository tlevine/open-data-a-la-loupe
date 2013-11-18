#!/bin/sh
set -e
textstart=$((97*24))

ffmpeg -i français.webm -i anglais.ogg \
  -map 0:0 -map 1:0 -c:0 libvpx -c:1 libvorbis \
  -vf drawtext="fontfile=/usr/share/fonts/truetype/ttf-dejavu/LiberationSans-Regular.tty:text='Transated to English by Thomas Levine (thomaslevine.com)':fontsize=20:fontcolor=black:x=100:y=main_h-140:enable=(gt(t\,$textstart))" \
  anglais.webm
