function explorer --description 'Opens current folder in windows explorer.exe if possible'
	explorer.exe (wslpath -w "$PWD")
end
