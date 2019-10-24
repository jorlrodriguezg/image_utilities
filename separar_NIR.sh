#!/bin/bash
#script.sh
#Script para redimensionar imagenes
x=1
y=1000
for pictures in $(ls IMG_*.JPG)
do
convert $pictures -channel R -separate separadas/IMG_$((y))_4.jpg
x=$((x+1))
y=$((y+1))
done
