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

" Breakpoints for undoing
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Keep cursor centered on searching and line joins
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Behave
map Y y$

" Search for file
nnoremap <leader>p :Files<Cr>

" Search within files
nnoremap <leader>f :Rg<Cr>

" clear search highlights
nnoremap \\ :noh<return>

" Rename symbols
nmap <leader>rn <Plug>(coc-rename)
" includes refactor window
nmap <leader>rf <Plug>(coc-refactor)

" Markdown preview
nmap <leader>mp <Plug>MarkdownPreview
nmap <leader>mps <Plug>MarkdownPreviewStop

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
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }

call plug#end()

colorscheme gruvbox
