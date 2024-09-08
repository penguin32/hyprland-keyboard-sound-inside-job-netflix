#!/bin/bash
directory="$HOME/Downloads/cognitoCareersAudioFiles/"
beep2="beep2.ogg"
#TRIAL AND ERROR DUMBASSS!
#xinput test-xi2 --root 3 | grep -A2 --line-buffered RawKeyRelease | while read -r line; do
#    if [[ $line == *"detail"* ]];
#    then
#        key=$( echo $line | sed "s/[^0-9]*//g")
    #Do something with the key
#    echo $key;
#    fi
#echo $line
#done

#citing that chad ->https://stackoverflow.com/questions/56602004/capturing-keypresses-from-the-background

	#sox $directory$beep2 -p pad 1 0 | \
xinput test-xi2 --root 3 | gawk '/RawKeyRelease/ {getline; getline; print $2; fflush()}' | while read -r key; do
	#sox -m $directory$beep2 -p pad 1 0 remix v2 | \
	#play -m $directory$beep2 remix v6
	#
#citation:https://stackoverflow.com/questions/45442335/how-to-play-a-sound-file-while-running-a-program-in-bash
	echo $key
	ffplay -showmode 0 -loglevel quiet -autoexit $directory$beep2 &
done
