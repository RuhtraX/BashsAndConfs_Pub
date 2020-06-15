function phosphor
    set ex "/usr/libexec/xscreensaver/phosphor"
    set param -window -pty -scale 2
    set -a param -delay 500 -ticks 10
    if string length -q -- $argv
        set -a param -program $argv
    else
        set -a param -program /bin/sh
    end
    $ex $param
end
