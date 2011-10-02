:nmap <C-j>o :call CreateScalaObject("")<CR>
:nmap <C-j>po :call CreateScalaObject("private ")<CR>
:nmap <C-j>ro :call CreateScalaObject("protected ")<CR>

:nmap <C-j>c :call CreateScalaClass("")<CR>
:nmap <C-j>pc :call CreateScalaClass("private ")<CR>
:nmap <C-j>rc :call CreateScalaClass("protected ")<CR>

fu! CreateScalaObject(modifier)
	let name = input("Object name: ")
	execute("normal i" . a:modifier . "object " . name . "{\<CR>\<CR>}\<Up>\<Tab>")
endf


fu! CreateScalaClass(modifier)
	let name = input("Object name: ")
	execute("normal i" . a:modifier . "class " . name . "{\<CR>\<CR>}\<Up>\<Tab>")
endf

