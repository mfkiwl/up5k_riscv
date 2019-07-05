#!/bin/sh
# convert a PNG file to a raw 565 w/ endian swap
ffmpeg -vcodec png -i $1 -vcodec rawvideo -f rawvideo -pix_fmt rgb565 temp.565
dd conv=swab <temp.565 >$1.565
rm temp.565
