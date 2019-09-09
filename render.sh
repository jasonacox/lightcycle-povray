#!/bin/bash

echo "Rendering frames..."
povray LightCycle.ini

echo "Convering frames to movie..."
ffmpeg -r 24 -i LightCycle%03d.png -s:v 800x600 -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p media/LightCycle.mp4

echo "Done - open LightCycle.mp4"
