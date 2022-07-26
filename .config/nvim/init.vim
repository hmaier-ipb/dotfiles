"__________________________________________
" My neovim config file
"__________________________________________
source ~/.vimrc

set completeopt=menuone,noselect,noinsert
"------------------------------------------------
"Plugins"
call plug#begin($HOME .'/.config/nvim/plugged' )
Plug 'vim-airline/vim-airline' 								" colorful status line
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " better highlighting
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neovim/nvim-lspconfig'								" native lsp

" ultisnips & vim-easycomplete provide autocompletion ->
Plug 'jayli/vim-easycomplete'
Plug 'SirVer/ultisnips'
call plug#end()
"------------------------------------------------
" For a list of coc-langservers refer to: https://github.com/neoclide/coc.nvim/wiki/Language-servers
"
colorscheme onedark

" CTRL + x to open completion
inoremap <C-x> <C-x><C-o>

" toggling NERDTREE
nnoremap <silent> <C-T> :NERDTreeToggle<CR>

" turn off tabNine (to much ram usage)urn off tabNine (to much ram usage)
let g:easycomplete_tabnine_enable = 0

" change working dir when navigating with nerd tree
set autochdir
