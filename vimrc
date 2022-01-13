
" maybe set leader key?
let mapleader = " " " space is the leader key now

syntax on
filetype on
filetype plugin on
filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=10
set incsearch
set ignorecase
set smartcase
set wildmenu

set nu
set autoindent
set smartindent
set hlsearch

inoremap jj <esc>
nnoremap <CR> :noh<CR>


" colorscheme
set background=dark
colo gruvbox

" NERDTree shortcuts
nnoremap <F3> :NERDTreeToggle<CR>
" nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>n <C-W>w
