# Defined in - @ line 2
function ls --description 'List contents of directory'
	set -l param --color=auto
    if isatty 1
        set param $param --indicator-style=classify
    end
    command ls --group-directories-first -F $param $argv
end
