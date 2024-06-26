#!/bin/bash
 
DATETIME=$(date +"%m-%d-%Y_%H:%M:%S")
DELAY=2
DURATION=20
DIR="$HOME/Media/Screencasts"

notify-send "Screen Recorder" "Recording duration set to $DURATION seconds. Recording will start in $DELAY seconds."
byzanz-record -c --verbose --delay=$DELAY --duration=$DURATION "$DIR/screencast_$DATETIME.gif"
notify-send "Screen Recorder" "Screencast saved to $DIR/screencast_$DATETIME.gif"
