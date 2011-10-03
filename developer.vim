:nmap <C-j>? :call GeneratePrototype()<CR>

fu! GeneratePrototype()
	let proto = input("What prototype? ")
	execute("normal :r ~/.vim/JeffVimTools/templates/" . proto . "\<CR>")
endf
