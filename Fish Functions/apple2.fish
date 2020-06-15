function apple2
    set ex "/usr/libexec/xscreensaver/apple2"
    set param -fast -threads -window -text -program
    if string length -q -- $argv
        set -a param $argv
    else
        set -a param /bin/sh
    end
    $ex $param
end
