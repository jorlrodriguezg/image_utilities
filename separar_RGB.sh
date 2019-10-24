#!/bin/bash
#script.sh
#Script para separar bandas de las imagenes
x=1
y=1000
for pictures in $(ls IMG_*.JPG)
do
convert $pictures -channel R -separate separadas/IMG_$((y))_3.jpg
convert $pictures -channel G -separate separadas/IMG_$((y))_2.jpg
convert $pictures -channel B -separate separadas/IMG_$((y))_1.jpg
x=$((x+1))
y=$((y+1))
done
