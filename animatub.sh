#!/bin/bash
mkdir -p .tub
mkdir -p .caps
if [ "$1" ] && [ "$2" ] && [ "$3" ]; then
echo "Obteniendo video..."
cd .tub
youtube-dl -q $1
cd ..
echo "Encodeando video a Gif..."
nom="`ls .tub/ | sed 's/\.[^.]*$//'`"
ffmpeg -ss "$2" -i .tub/* -vf scale=480:-1 -r 10 -t "$3" .caps/ima%04d.png 2> /tmp/anima-error.log
convert .caps/ima*.png "$nom".gif 2> /tmp/anima-error.log
echo "¡Gif listo! ~ $nom.gif"
rm -r .caps
rm -r .tub
else
echo "Ups, falta algo. Recuerda en este orden:
./anima.sh https://www.youtube.com/watch?v=qwerty 00:00:00 0"
fi
