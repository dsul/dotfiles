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

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <SPACE> <Nop>
let mapleader=" "

" Highlight the symbol and its references when hovering cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

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

" Select autocomplete suggestions with TAB
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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
