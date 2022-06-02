"----------- 
"   VIMRC   |
"----------- 
"
" Notes:
" -> Block in-/dedentation: 
"
"
"
if &compatible          " only if not set before:
  set nocompatible      " use vim-defaults instead
  						" of vi-defaults (easier, more user friendly)
endif

"copy to clipboard
noremap <C-y> "+y  

"paste from clipboard
noremap <C-p> "+p  

" Indentation
vmap <TAB> >gv

" Dedentation
vmap <S-TAB> <gv

syntax on
set relativenumber 	" hybrid
set number 		" hybrid
set mouse=a

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

" highlight current line
set cursorline
