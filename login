#!/bin/bash

ms1=`last username -n 1 | awk 'NR==1 {print $5}'`
typeset -i d1=`last username -n 1 | awk 'NR==1 {print $6}'`

ms2=`last -n 1 -t today username | awk 'NR==1 {print $5}'`
typeset -i d2=`last -n 1 -t today username | awk 'NR==1 {print $6}'`

if (( ms2==ms1 ))
then
	if (( d2 - d1 < 4 ))
	then
		`cvlc --no-loop -q --no-repeat --play-and-exit /path/to/audio/file/Hello\ Again.mp3`
		exit 0
	fi
	`cvlc --no-loop -q --no-repeat --play-and-exit /path/to/audio/file/chellgladoswakeup04.mp3`
	exit 0
else
	if (( d2 > 2 ))
	then
		`cvlc --no-loop -q --no-repeat --play-and-exit /path/to/audio/file/chellgladoswakeup04.mp3`
		exit 0
	fi
	`cvlc --no-loop -q --no-repeat --play-and-exit /path/to/audio/file/Hello\ Again.mp3`
	exit 0
fi
