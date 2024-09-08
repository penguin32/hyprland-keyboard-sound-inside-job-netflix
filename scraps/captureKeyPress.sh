#!/bin/bash
directory="$HOME/Downloads/cognitoCareersAudioFiles/"
beep1="beep1.ogg"
beep2="beep2.ogg"

#xinput test-xi2 --root 3 | gawk '/RawKeyPress/ {getline; getline; print $2; fflush()}' | while read -r -s key ; do
#	ffplay -showmode 0 -loglevel quiet -autoexit $directory$beep1 &
#done

xinput test-xi2 --root 3 | gawk '/RawKeyPressed/ {print $4; fflush()}' | while read -r -s key ; do
	
	while [ $key == "(RawKeyPress)" ]; do
		sleep 0.3;
		ffplay -showmode 0 -loglevel quiet -autoexit $directory$beep1 &
		if [ $key == "(RawKeyRelease)" ]; then
			break
		fi
	done
done
