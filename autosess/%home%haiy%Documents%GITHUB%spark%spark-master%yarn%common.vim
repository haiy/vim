let SessionLoad = 1
if &cp | set nocp | endif
map  h
let s:cpo_save=&cpo
set cpo&vim
map <NL> j
map  k
map  l
xnoremap <silent>  y:call g:vimim_visual()
nnoremap <silent>  i=g:vimim_chinese()
map   /
vnoremap <silent> # :call VisualSelection('b', '')
vnoremap <silent> * :call VisualSelection('f', '')
map ,pp :setlocal paste!
map ,x :e ~/buffer.md
map ,q :e ~/buffer
map ,s? z=
map ,sa zg
map ,sp [s
map ,sn ]s
map ,ss :setlocal spell!
map ,p :cp
map ,n :cn
map ,co ggVGy:tabnew:set syntax=qfpgg
map ,cc :botright cope
vnoremap <silent> ,r :call VisualSelection('replace', '')
map ,g :Ack 
map ,cd :cd %:p:h:pwd
map ,te :tabedit =expand("%:p:h")/
map ,t, :tabnext 
map ,tm :tabmove 
map ,tc :tabclose
map ,to :tabonly
map ,tn :tabnew
map ,ba :1,1000 bd!
map ,bd :Bclose
map <silent> , :noh
nmap ,w :w!
map 0 ^
nmap gx <Plug>NetrwBrowseX
xmap <silent> gi 
nnoremap <silent> gi a=g:vimim_gi()
vnoremap <silent> gv :call VisualSelection('gv', '')
map j gj
map k gk
nnoremap <silent> n :call g:vimim_search()n
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <C-Space> ?
inoremap <silent>  =g:vimim_onekey()
inoremap  =g:vimim_chinese()
vmap ë :m'<-2`>my`<mzgv`yo`z
vmap ê :m'>+`<my`>mzgv`yo`z
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
set errorformat=%E\ %#[error]\ %f:%l:\ %m,%C\ %#[error]\ %p^,%-C%.%#,%Z,%W\ %#[warn]\ %f:%l:\ %m,%C\ %#[warn]\ %p^,%-C%.%#,%Z,%-G%.%#
set expandtab
set fileencodings=utf8
set fileformats=unix,dos,mac
set helplang=cn
set hidden
set history=700
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set makeprg=sbt\ -Dsbt.log.noformat=true\ compile
set matchtime=2
set nomodeline
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/vim-scala,~/.vim/bundle/Vundle.vim,~/.vim/bundle/autosess,~/.vim/bundle/jedi-vim,~/.vim/bundle/vim-peepopen,~/.vim/bundle/vim-scala,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/vim-scala/after,~/.vim/after,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/vim-scala/after,~/.vim/eclim,~/.vim/eclim/after
set scrolloff=7
set shiftwidth=4
set showcmd
set showmatch
set showtabline=2
set smartcase
set smartindent
set smarttab
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set switchbuf=useopen,usetab,newtab
set tabstop=4
set textwidth=500
set timeoutlen=500
set viminfo=%,'100,<50,s10,h
set whichwrap=b,s,<,>,h,l
set wildignore=*.o,*~,*.pyc,.git*,.hg*,.svn*
set wildmenu
set window=23
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/GITHUB/spark/spark-master/yarn/common
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 src/main/scala/org/apache/spark/scheduler/cluster
badd +0 src/main/scala/org/apache/spark/scheduler/cluster/YarnClientClusterScheduler.scala
args src/main/scala/org/apache/spark/scheduler/cluster
edit src/main/scala/org/apache/spark/scheduler/cluster/YarnClientClusterScheduler.scala
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 69 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 10 + 40) / 80)
argglobal
enew
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <S-Up> :Pexplore
inoremap <buffer> <silent> <S-Down> :Nexplore
nnoremap <buffer> <silent> C :let g:netrw_chgwin= winnr()
nnoremap <buffer> <silent> c :exe "keepjumps lcd ".fnameescape(b:netrw_curdir)
nnoremap <buffer> <F1> :he netrw-quickhelp
nnoremap <buffer> <silent> <S-Up> :Pexplore
nnoremap <buffer> <silent> <S-Down> :Nexplore
imap <buffer>  <Plug>NetrwHideEdit
imap <buffer>  <Plug>NetrwRefresh
inoremap <buffer> <silent> C :let g:netrw_chgwin= winnr()
inoremap <buffer> <silent> c :exe "keepjumps lcd ".fnameescape(b:netrw_curdir)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal nobuflisted
setlocal buftype=
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
if &filetype != 'netrw'
setlocal filetype=netrw
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
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
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
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'netrw'
setlocal syntax=netrw
endif
setlocal tabstop=33
setlocal tags=
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
lcd ~/Documents/GITHUB/spark/spark-master/yarn/common
wincmd w
argglobal
nnoremap <buffer> ,jt :call JustifyCurrentLine()
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
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
if &filetype != 'scala'
setlocal filetype=scala
endif
set foldcolumn=1
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=2
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
setlocal include=^\\s*import
setlocal includeexpr=substitute(v:fname,\"\\\\.\",\"/\",\"g\")
setlocal indentexpr=GetScalaIndent()
setlocal indentkeys=0{,0},0),!^F,<>>,o,O,e,=case,<CR>
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
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,/usr/include,,,src/main/scala,src/test/scala
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.scala
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'scala'
setlocal syntax=scala
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
32
normal! zo
let s:l = 32 - ((1 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 063|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 69 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 10 + 40) / 80)
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
