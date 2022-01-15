
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
set cursorline
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
nnoremap <leader>z :Goyo<CR>
set relativenumber

" rainbow bracket
let g:rainbow_active = 1

" syntax checker
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {'mode' : 'passive'}
"
let g:syntastic_python_checkers=['flake8']
"
"
map <F2> <ESC>:call SyntasticCheckToggle()<CR>
map <F3> <ESC>:call SyntasticLocListToggle()<CR>
"
let g:syntastic_is_open = 0  
function! SyntasticLocListToggle()
    if g:syntastic_is_open == 1
        lclose
        let g:syntastic_is_open = 0 
    else
        Errors
        let g:syntastic_is_open = 1 
    endif
endfunction

let g:chck = 0
function! SyntasticCheckToggle()
    if g:chck == 0
        SyntasticCheck
        let g:chck = 1
    else
        SyntasticToggleMode
        let g:chck = 0
    endif
endfunction


" nnoremap <F10> :SyntasticCheck<CR>:call SyntasticToggleMode<CR>:w<CR>



" airline
"let g:airline_powerline_fonts=1


" Anyfold
autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1
set foldlevel=0
hi Folded term=NONE cterm=NONE



