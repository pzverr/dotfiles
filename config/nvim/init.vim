set nobackup
set noswapfile
set nowritebackup
set signcolumn=yes
set fileformat=unix
set encoding=utf-8
set mousehide
set mouse=
filetype indent on
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
"set ignorecase
set number
" set relativenumber
syntax enable
set scrolloff=7
set updatetime=300

call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'numToStr/Comment.nvim'
" Plug 'morhetz/gruvbox'
" Plug 'Mofiqul/vscode.nvim'
Plug 'navarasu/onedark.nvim'
call plug#end()

" Netrw file explorer settings
let g:netrw_banner = 0 " hide banner above files
let g:netrw_liststyle = 3 " tree instead of plain view
" let g:netrw_browse_split = 3 " vertical split window when Enter pressed on file
let g:netrw_winsize = 30

colorscheme onedark

set completeopt=menu,menuone,noselect

lua require('main')

inoremap <C-p> <Esc>:Lex<CR>
nnoremap <C-p> <Esc>:Lex<CR>

autocmd FileType python set colorcolumn=79
autocmd FileType javascript set colorcolumn=79
autocmd FileType typescript set colorcolumn=79
autocmd FileType vue set colorcolumn=79
autocmd FileType go set colorcolumn=79
autocmd FileType rust set colorcolumn=79

