:nmap <C-j>cl :call GenerateJavaClass("")<CR>
:nmap <C-j>pcl :call GenerateJavaClass("public")<CR>
:nmap <C-j>ocl :call GenerateJavaClass("protected")<CR>
:nmap <C-j>rcl :call GenerateJavaClass("private")<CR>

fu! GenerateJavaClass(modifier)
	let name = input("Class name: ")
	execute("normal a" . a:modifier . " class " . name . "{\<Esc>a\<CR>\<CR>}\<UP>\<Esc>$a\<Tab>\<Esc>")
endf
