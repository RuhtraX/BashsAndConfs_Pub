# Defined in - @ line 2
function la --description 'List contents of directory, including hidden files in directory using long format'
	ls -lah --group-directories-first $argv
end
