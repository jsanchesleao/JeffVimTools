

:imap \syso System.out.println();<Left><Left>
:imap \main public static void main(String... args)<Esc>a{<CR><CR>}<UP><Tab>
:imap \for for(<space><Esc>mfa<space><space>){<Esc>a<CR><CR>}<Esc>`fa
:imap \while while(<space><Esc>mwa<space><space>){<Esc>a<CR><CR>}<Esc>`wa
:imap \do do{<CR><CR>}while(<space><Esc>mda<space><space>)<Esc>`da
:imap \if if(<space><Esc>mia<space><space>){<Esc>a<CR><CR>}<Esc>`wi
:imap \try try{<CR><tab><Esc>mta<CR>}<Esc>`t
:imap \catch catch(<space><Esc>mca<space>ex){<Esc>a<CR><CR>}<Esc>`ca
:imap \finally finally{<CR><tab><Esc>mfa<CR>}<Esc>`f

:imap ;p public<space>;
:imap ;t static<space>;
:imap ;r private<space>;
:imap ;o protected<space>;
:imap ;n final<space>;
:imap ;! strictfp<space>;

:imap ;s String<space>
:imap ;S ;s
:imap ;i int<space>
:imap ;f float<space>
:imap ;c char<space>
:imap ;d double<space>
:imap ;l long<space>
:imap ;I Integer<space>
:imap ;F Float<space>
:imap ;C Character<space>
:imap ;D Double<space>
:imap ;L Long<space>


:imap "" "<Left>"
:imap "<space> ""<Right>
:imap '' '<Left>'
:imap '<space> ''<Right>
:imap ({<CR> (){}<Left><CR><CR><Up><Tab>
:imap ){<CR> ){}<Left><CR><CR><Up><Tab>
:imap ;<CR> <Esc>A;<Esc>a<CR>
:imap ;. <Esc>A;
