#!/bin/bash
directory="$HOME/Downloads/cognitoCareersAudioFiles/"
loop="loopAmbience.ogg"

ffplay -showmode 0 -loglevel quiet -loop 0 $directory$loop
