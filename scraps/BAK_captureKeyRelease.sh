#!/bin/bash
directory="$HOME/Downloads/cognitoCareersAudioFiles/"
beep2="beep2.ogg"

xinput test-xi2 --root 3 | gawk '/RawKeyRelease/ {getline; getline; print $2; fflush()}' | while read -r key; do
	echo $key
	ffplay -showmode 0 -loglevel quiet -autoexit $directory$beep2 &
done
