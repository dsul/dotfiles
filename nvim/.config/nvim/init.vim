set background=dark
set nowrap
set backspace=indent,eol,start
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=20
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
set matchtime=0

map Y y$
nnoremap <C-p> :Files<Cr>
nnoremap <C-i> :Rg<Cr>

let g:airline_theme='gruvbox'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
