fu! GenerateProject(lang)
	let projectname = input("Project name: ")
	execute("normal :!bash ~/.vim/jeffvimtools/prototype.sh " . lang ." " . projectname . "\<CR>")
	echo "Project created"
endf

com! ScalaCreateProject :call GenerateScalaProject("scala")
