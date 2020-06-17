set -e -E

fps=15
fuzz=3%

mkdir -p frames
ffmpeg -i "$1" -r ${fps} frames/%04d.png
convert -delay $(( 100 / fps )) -loop 0 -layers optimize -fuzz ${fuzz} frames/*.png output.gif #takes some time
command rm -r frames

