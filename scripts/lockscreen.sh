img=/tmp/i3lock.png

scrot -o $img
convert $img -resize 5% -resize 2000% $img
# convert $img -scale 5% -scale 2000% $img

i3lock -i $img
