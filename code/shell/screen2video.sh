#!/bin/bash

rm -rf video_test
mkdir video_test;  cd video_test
count=0
while [ $count -lt 15 ]
do
    sleep 1
    filename=$(printf "img%03d.png" $count)
    screencapture $filename
    count=$((count+1))
done

if [ ! $(which ffmpeg) ]
then
    brew install ffmpeg
fi
ffmpeg -r 1 -i img%03d.png -pix_fmt yuv420p -crf 25 -s 2560x1440 out.mp4
