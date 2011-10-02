:nmap <C-j>cl :call GenerateJavaClass("")<CR>
:nmap <C-j>pcl :call GenerateJavaClass("public ")<CR>
:nmap <C-j>ocl :call GenerateJavaClass("protected ")<CR>
:nmap <C-j>rcl :call GenerateJavaClass("private ")<CR>
:nmap <C-j>? :call GeneratePrototype()<CR>
:nmap <C-j>b :call GenerateBeanProperty()<CR>

fu! GenerateJavaClass(modifier)
	let name = input("Class name: ")
	execute("normal a" . a:modifier . "class " . name . "{\<Esc>a\<CR>\<CR>}\<UP>\<Esc>$a\<Tab>\<Esc>")
endf

fu! GenerateBeanProperty()
	let type = input("Inform the type: ")
	let name = input("Inform the name: ")
	let camel = toupper(strpart(name,0 , 1)) . strpart(name, 1)
	execute("normal mbaprivate " . type . " " . name . ";\<Esc>")
	execute("normal o\<CR>public " . type . " get" . camel . "()\<Esc>a{\<CR>\<Tab>return this." . name . ";\<CR>\<Left>}")
	execute("normal o\<CR>public void set" . camel . "(" . type  . " " . name . ")\<Esc>a{\<CR>\<Tab>this." . name . " = " .name. ";\<CR>\<Left>}\<Esc>`b")
	execute("normal o\<CR>\<Esc>i\<Tab>\<Esc>")
endf

fu! GeneratePrototype()
	let proto = input("What prototype? ")
	execute("normal :r ~/.vim/JeffVimTools/templates/" . proto . "\<CR>")
endf
