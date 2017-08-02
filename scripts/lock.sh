#!/bin/bash
scrot /img/screen.png
convert /img/screen.png -scale 10% -scale 1000% /img/screen.png
[[ -f $1 ]] && convert /img/screen.png $1 -gravity center -composite -matte /img/screen.png
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
`i3lock -u -i /img/screen.png
rm /img/screen.png