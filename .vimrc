syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set number
set ai
set hlsearch
set cursorline
set ruler

set list
set listchars=trail:⋅

autocmd BufNewFile,BufRead *.asm set ft=nasm

" Highlights (xterm-256color)
set t_Co=256

" major
highlight Normal    ctermfg=15
highlight Comment   ctermfg=248
highlight Constant  ctermfg=207
highlight Statement ctermfg=226
highlight Type      ctermfg=40
highlight PreProc   ctermfg=224

" misc
highlight LineNr        ctermfg=244
highlight CursorLineNr  ctermfg=252
highlight SpecialKey    ctermfg=244

