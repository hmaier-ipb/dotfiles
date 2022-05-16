"----------- 
"   VIMRC   |
"----------- 

"copy to clipboard
noremap <C-y> "+y  

"paste from clipboard
noremap <C-p> "+p  

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
