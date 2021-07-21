#!/bin/bash
if [ "$1" ]
then
size=300
name="_thumbnail"
for files in `cat $1`
do
convert -resize $size $files $files$name.jpg
done
else
size=300
name="_thumbnail"
for folder in `ls *.jpg`
do
convert -resize $size $folder $folder$name.jpg
done
