#!/bin/bash
directory="$HOME/Downloads/cognitoCareersAudioFiles/cognitoMode/"
ambienceLoop="ambienceLoop.sh"
captureKeyRelease="captureKeyRelease.sh"
nohup $directory$ambienceLoop >/dev/null 2>&1 &
nohup $directory$captureKeyRelease >/dev/null 2>&1 &
