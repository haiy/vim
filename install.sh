#!/bin/bash
echo "Begin to install pathogen..."
echo "1 downloading..."
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
		curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "2 add to vimrc.."
cat "execute pathogen#infect()
syntax on
filetype plugin indent on" >> $HOME/.vimrc

echo "3 install syntastic"
cd ~/.vim/bundle && \
		git clone https://github.com/scrooloose/syntastic.git
cat "set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0" >> $HOME/.vimrc

echo "4 install jedi..."
sudo pip install jedi
cd ~/.vim/bundle/ && git clone --recursive https://github.com/davidhalter/jedi-vim.git

cat "autocmd FileType python setlocal completeopt-=preview
" >> ~/.vimrc

echo "5 install airline..."
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

