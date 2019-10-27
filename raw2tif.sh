#!/bin/bash
#script.sh
#Script para redimensionar imagenes
x=1000
for pictures in $(ls DSC*.ARW)
do
convert -verbose $pictures TIF/DSC_$((y)).tif
x=$((x+1))
done
