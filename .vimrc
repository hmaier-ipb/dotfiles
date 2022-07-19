"-----------------------------------------------
" my .VIMRC, the root of all other vim configs	|
"-----------------------------------------------
" only if not set before:
" use vim-defaults instead
" of vi-defaults (easier, more user friendly)
if &compatible          
  set nocompatible      
endif

syntax on
set relativenumber 	" hybrid
set number 		" hybrid
set mouse=a

set shell=/bin/bash 

"case-insensitive searching
set ignorecase		
set smartcase

" Disable audible/visual bells
set noerrorbells
set novisualbell
set t_vb=

" setting formating stuff
set tabstop=4
set shiftwidth=4
set autoindent

"show matching pairs -> () [] {}
set showmatch

" copy to clipboard
noremap <C-y> "+y  

" paste from clipboard
noremap <C-p> "+p  

" Indentation
vnoremap >	>gv

" Dedentation
vnoremap <	<gv

" unhighlight
nnoremap <esc> :nohlsearch<cr><esc>

noremap <F5> :so $MYVIMRC<cr>
