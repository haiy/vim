let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <S-Tab> <Plug>SuperTabBackward
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
snoremap <silent>  c
nmap  h
xmap  h
omap  h
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
nmap <NL> j
xmap <NL> j
omap <NL> j
map  k
map  l
nnoremap <silent>  :CtrlP
xnoremap <silent>  y:call g:vimim_visual()
nnoremap <silent>  i=g:vimim_chinese()
map   /
xnoremap <silent> # :call VisualSelection('b', '')
xnoremap <silent> * :call VisualSelection('f', '')
nmap ,pp :setlocal paste!
xmap ,pp :setlocal paste!
omap ,pp :setlocal paste!
nmap ,x :e ~/buffer.md
xmap ,x :e ~/buffer.md
omap ,x :e ~/buffer.md
nmap ,q :e ~/buffer
xmap ,q :e ~/buffer
omap ,q :e ~/buffer
nmap ,s? z=
xmap ,s? z=
omap ,s? z=
nmap ,sa zg
xmap ,sa zg
omap ,sa zg
nmap ,sp [s
xmap ,sp [s
omap ,sp [s
nmap ,sn ]s
xmap ,sn ]s
omap ,sn ]s
nmap ,ss :setlocal spell!
xmap ,ss :setlocal spell!
omap ,ss :setlocal spell!
nmap ,p :cp
xmap ,p :cp
omap ,p :cp
nmap ,n :cn
xmap ,n :cn
omap ,n :cn
nmap ,co ggVGy:tabnew:set syntax=qfpgg
xmap ,co ggVGy:tabnew:set syntax=qfpgg
omap ,co ggVGy:tabnew:set syntax=qfpgg
nmap ,cc :botright cope
xmap ,cc :botright cope
omap ,cc :botright cope
xnoremap <silent> ,r :call VisualSelection('replace', '')
nmap ,g :Ack 
xmap ,g :Ack 
omap ,g :Ack 
nmap ,cd :cd %:p:h:pwd
xmap ,cd :cd %:p:h:pwd
omap ,cd :cd %:p:h:pwd
nmap ,te :tabedit =expand("%:p:h")/
xmap ,te :tabedit =expand("%:p:h")/
omap ,te :tabedit =expand("%:p:h")/
nmap ,t, :tabnext 
xmap ,t, :tabnext 
omap ,t, :tabnext 
nmap ,tm :tabmove 
xmap ,tm :tabmove 
omap ,tm :tabmove 
nmap ,tc :tabclose
xmap ,tc :tabclose
omap ,tc :tabclose
nmap ,to :tabonly
xmap ,to :tabonly
omap ,to :tabonly
nmap ,tn :tabnew
xmap ,tn :tabnew
omap ,tn :tabnew
nmap ,ba :1,1000 bd!
xmap ,ba :1,1000 bd!
omap ,ba :1,1000 bd!
nmap ,bd :Bclose
xmap ,bd :Bclose
omap ,bd :Bclose
nmap <silent> , :noh
xmap <silent> , :noh
omap <silent> , :noh
nmap ,w :w!
nmap 0 ^
xmap 0 ^
omap 0 ^
nmap gx <Plug>NetrwBrowseX
xmap <silent> gi 
nnoremap <silent> gi a=g:vimim_gi()
xnoremap <silent> gv :call VisualSelection('gv', '')
nmap j gj
xmap j gj
omap j gj
nmap k gk
xmap k gk
omap k gk
nnoremap <silent> n :call g:vimim_search()n
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
snoremap <silent> <Del> c
snoremap <silent> <BS> c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
map <C-Space> ?
map <F6> :!./g.sh
map <F5> :!mvn package && ./r.sh
inoremap <silent> 	 =UltiSnips#ExpandSnippet()
inoremap <silent>  =g:vimim_onekey()
inoremap  =g:vimim_chinese()
xmap ë :m'<-2`>my`<mzgv`yo`z
xmap ê :m'>+`<my`>mzgv`yo`z
nmap ë mz:m-2`z
nmap ê mz:m+`z
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=eol,start,indent
set cindent
set cmdheight=2
set expandtab
set fileencodings=utf8
set fileformats=unix,dos,mac
set helplang=cn
set hidden
set history=700
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set matchtime=2
set nomodeline
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/vim-scala,~/.vim/bundle/ultisnips,~/.vim/bundle/vim-snippets,~/.vim/bundle/Vundle.vim,~/.vim/bundle/autosess,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/delimitMate,~/.vim/bundle/jedi-vim,~/.vim/bundle/supertab,~/.vim/bundle/ultisnips,~/.vim/bundle/vim-peepopen,~/.vim/bundle/vim-scala,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/vim-scala/after,~/.vim/bundle/ultisnips/after,~/.vim/after,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/vim-scala/after,~/.vim/bundle/ultisnips/after,~/.vim/bundle/vim-snippets/after,~/.vim/eclim,~/.vim/eclim/after
set scrolloff=7
set shiftwidth=4
set showcmd
set showmatch
set showtabline=2
set smartcase
set smartindent
set smarttab
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class
set noswapfile
set switchbuf=useopen,usetab,newtab
set tabstop=4
set textwidth=500
set timeoutlen=500
set viminfo=%,'100,<50,s10,h
set whichwrap=b,s,<,>,h,l
set wildignore=*.o,*~,*.pyc,.git*,.hg*,.svn*
set wildmenu
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/test_project/ade/IDCenter/IDMap
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +403 src/main/java/com/duozhun/zerone/IndirectMap.java
badd +2 r.sh
badd +17 src/main/java/com/duozhun/zerone/DirectMap.java
args src/main/java/com/duozhun/zerone/IndirectMap.java
edit src/main/java/com/duozhun/zerone/IndirectMap.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 60 + 83) / 166)
exe 'vert 2resize ' . ((&columns * 105 + 83) / 166)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%A%f:[%l\\,%c]\ %m,%Csymbol%.%#:\ %m,%Zlocation%.%#:\ %m,%AEmbedded\ error:%.%#\ -\ %f:%l:\ %m,%-Z\ %p^,%A%f:%l:\ %m,%-Z\ %p^,%ARunning\ %f,%+ZTests\ run%.%#FAILURE!,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
set foldcolumn=1
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=mvn\ $*
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,/usr/include,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
272
normal! zo
288
normal! zo
let s:l = 404 - ((54 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
404
normal! 01|
wincmd w
argglobal
enew
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=wipe
setlocal buflisted
setlocal buftype=nofile
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
set foldcolumn=1
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal previewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal winfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
wincmd w
exe 'vert 1resize ' . ((&columns * 60 + 83) / 166)
exe 'vert 2resize ' . ((&columns * 105 + 83) / 166)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
