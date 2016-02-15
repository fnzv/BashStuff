#!/bin/bash
# Download songs from youtube playlists
# youtube-dl required

index='&index='

echo "How many songs do you want to download?"; 
read num;

echo "Insert the playlist url without index"
read playlist;

echo "Starting downloading songs";
for (( i = 1 ; i <= $num ; i += 1 )) ; do
 echo $playlist$index$num;
 eval youtube-dl --extract-audio --audio-format mp3 $playlist$index$num
done


