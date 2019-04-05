function mpview --description 'Calls mpv with customized options'
	command mpv --shuffle --loop-file=inf --screenshot-format=jpg --screenshot-jpeg-quality=94 $argv
end
