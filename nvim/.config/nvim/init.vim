set background=dark
set nowrap
set backspace=indent,eol,start
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=100
set shortmess+=c
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set ignorecase
set smartcase
set incsearch
set showmatch

map Y y$

let g:airline_theme='gruvbox'
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
