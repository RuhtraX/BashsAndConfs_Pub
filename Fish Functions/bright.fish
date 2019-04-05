# Defined in - @ line 2
function bright --description 'Calls xrandr with options for adjusting screen brightness'
	xrandr --output eDP1 --brightness $argv
end
