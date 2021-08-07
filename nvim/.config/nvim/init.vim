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

nnoremap <SPACE> <Nop>
let mapleader=" "

" Highlight the symbol and its references when hovering cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Apply AutoFix to problem on the current line
nmap <leader>af <Plug>(coc-codeaction-selected)

map Y y$
nnoremap <leader>p :Files<Cr>
nnoremap <leader>f :Rg<Cr>
" clear search highlights
nnoremap \\ :noh<return>
" Rename symbols
nmap <leader>rn <Plug>(coc-rename)

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
