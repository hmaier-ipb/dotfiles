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

" This lua-code will enable highlighting with treesitter!
":lua << EOF
"-- Inits tree-sitter for code-highlighting
"	require'nvim-treesitter.configs'.setup {
"	ensure_installed = "all",
"	sync_install = false,
"	ignore_install = { "javascript" },
"	highlight = {
"		enable = true,
"		disable = { },
"		additional_vim_regex_highlighting = false,
"		},
"	}
"
"
"-- Requires bash-language-server on arch
"-- require'lspconfig'.bashls.setup{}
"
"EOF
