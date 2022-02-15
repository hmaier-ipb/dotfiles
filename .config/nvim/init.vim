"__________________________________________
" My neovim config file
"__________________________________________

syntax on
set relativenumber 	" hybrid
set number 		" hybrid
set mouse=a
set tabstop=4
set shiftwidth=4
set completeopt=menuone,noselect,noinsert


"------------------------------------------------
"Plugins"
call plug#begin($HOME .'/.config/nvim/plugged' )

Plug 'neovim/nvim-lspconfig'			" native lsp support 
Plug 'vim-airline/vim-airline' 			" colorful status line
Plug 'ray-x/lsp_signature.nvim' 		" shows hints for the functions
Plug 'nvim-treesitter/nvim-treesitter' 	" better highlighting 
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

call plug#end()
"------------------------------------------------

"copy to clipboard
noremap <C-y> "+y  

"paste from clipboard
noremap <C-p> "+p  

"" Language Server Configuration
:lua << EOF
	local nvim_lsp = require('lspconfig')
	local on_attach = function(_, bufnr)
-- 		require('').on_attach() 
	end	
	local servers = {'pyright'} -- add language server to this array

	for _, server_name in ipairs(servers) do
		nvim_lsp[server_name].setup{
--			on_attach = on_attach,
		}
	end
EOF
"" END of LSP config

" Set omnifunc for autocompletion for languages
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
	
" CTRL + x to open completion
inoremap <C-x> <C-x><C-o>

