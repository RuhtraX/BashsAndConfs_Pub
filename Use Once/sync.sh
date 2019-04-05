#!/bin/bash

ffmpeg -itsoffset -20.2 -i '/path/to/input/file.mp4' -c:v copy -c:a copy -map 0:v -map 1:a outputfile.mkv
