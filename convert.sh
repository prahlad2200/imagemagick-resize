#!/bin/bash

cd input
list=$(ls *.jpg)
mkdir ../output/
for img in $list; do
inname=$(convert -ping $img -format "%t" info:)
#convert $img -strip -colorspace RGB -resize 50x50! -background white -flatten -interlace JPEG -sampling-factor 4:2:0 -quality 75 ../output/${inname}.jpg 
convert $img -resize 1920x900 -quality 100 ../output/${inname}.jpg 
done

echo Success: Optimised images in /output
