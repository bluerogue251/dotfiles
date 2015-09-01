call pathogen#infect()
set autowrite
syntax enable
filetype plugin indent on
set number
set linebreak
set showmatch
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=4
set ruler
set undolevels=1000
set history=200
set backspace=indent,eol,start
set nomodeline
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" cp copies a paragraph to directly below it - from Vic Ramon
noremap cp yap<S-}>p

let g:rspec_command = "!clear && echo {spec} && time rspec {spec}"
syntax on
set background=dark
set t_Co=16
autocmd QuickFixCmdPost *grep* cwindow

" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()
map <Leader><Leader> <C-S-^>

" Allow these to filter command history based on already typed in words
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>


" Save with control-s
map <C-s>  <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Remove search match highlights with control-c
map <C-h>  :noh<cr>

" For Ruby text-objects
runtime macros/matchit.vim

" From Practical Vim + Tim Pope's unimpaired
noremap <silent> [b :bprevious<CR>
noremap <silent> ]b :bnext<CR>
noremap <silent> [B :bfirst<CR>
noremap <silent> ]B :blast<CR>