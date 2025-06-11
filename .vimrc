" Vim config
" Author: Mateusz Furga <matfurga@gmail.com>

set tabstop=2
set shiftwidth=2
set expandtab
set number
set ai
set hlsearch
set cursorline
set ruler
set mouse=a
"set laststatus=2

set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=%#LineNr#
set statusline+=%f
set statusline+=%m
set statusline+=%=
"set statusline+=%#CursorColumn#
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %{&fileformat}
set statusline+=\ %y
"set statusline+=\ %p%%

"set colorcolumn=80
"hi ColorColumn   guibg=#292a2a
set list
set listchars=trail:⋅,tab:\ \ 

autocmd BufNewFile,BufRead *.asm set ft=nasm
autocmd FileType make set noexpandtab

" Syntax highlighting
syntax on
set termguicolors

" Colors
let C_NONE         = "NONE"
let C_WHITE        = "#f0f0f0"
let C_DARK         = "#2b2b2b"
let C_GRAY         = "#858585"
let C_GRAY_LIGHT   = "#949494"
let C_GRAY_LIGHT2  = "#c6c6c6"
let C_GRAY_LIGHT3  = "#c0c0c0"
let C_GRAY_DARK    = "#2d2d2d"
let C_GRAY_DARK2   = "#404040"
let C_PURPLE       = "#ae81ff"
let C_BLUE         = "#04395e"
let C_BLUE_LIGHT   = "#264f78"
let C_BLUE_LIGHT2  = "#2a4e67"
"let C_GREEN        = "#00df38"
let C_GREEN        = "#00db5c"
let C_RED          = "#ff7c8b"
let C_RED_LIGHT    = "#ffa0a0"
let C_BROWN        = "#673917"
let C_YELLOW       = "#ffdb4c"
let C_YELLOW_LIGHT = "#e6db74"
let C_GOLD         = "#ffc830"

function Hi(what, guifg, guibg = "NONE", gui = "NONE")
  exe "hi " . a:what . " guifg=" . a:guifg . " guibg=" . a:guibg . " gui=" . a:gui
endfunction

call Hi("Normal", C_WHITE, C_DARK)
call Hi("Comment", C_GRAY_LIGHT)
call Hi("String", C_YELLOW_LIGHT)
call Hi("Number", C_PURPLE)
call Hi("Type", C_GREEN)
call Hi("Statement", C_YELLOW)
call Hi("Constant", C_RED_LIGHT)
call Hi("Function", C_WHITE)
call Hi("Special", C_GOLD)

call Hi("EndOfBuffer", C_DARK)
call Hi("Search", C_WHITE, C_BROWN)
call Hi("Visual", C_NONE, C_BLUE_LIGHT)
call Hi("MatchParen", C_NONE, C_BLUE_LIGHT)
call Hi("SpecialKey", C_WHITE)

" Cursor line
call Hi("LineNr", C_GRAY)
call Hi("CursorLine", C_NONE, C_NONE, "underline")
call Hi("CursorLineNr", C_GRAY_LIGHT2)

call Hi("StatusLine", C_GRAY_DARK, C_WHITE)
call Hi("VertSplit", C_DARK, C_GRAY)

" Menu
call Hi("PMenu", C_WHITE, C_GRAY_DARK)
call Hi("PMenuSel", C_WHITE, C_BLUE)
call Hi("PmenuSbar", C_NONE, C_GRAY_DARK)
call Hi("PmenuThumb", C_NONE, C_BLUE_LIGHT2)

" Tabs
call Hi("TabLine", C_GRAY_LIGHT3, C_GRAY_DARK2)
call Hi("TabLineSel", C_WHITE, C_DARK, C_NONE)
call Hi("TabLineFill", C_DARK)

" Mark chars after 80th column
call Hi("OverLength", C_NONE, C_BROWN)
match OverLength '\%>80v.\+'

" C
"call Hi("cFormat", C_YELLOW)
call Hi("cOnlyPreProc", C_RED)

hi link cOctalZero Number
hi link cFormat Special
hi link cCharacter String

autocmd BufEnter *.c,*.cc,*.h
  \ syn match cOnlyPreProc /#include\|#define\|#undef\|#pragma\|#ifndef\|#if\|#else\|#elif\|#endif\|#error/

autocmd BufEnter *.c,*.h
  \ syn match cNumber "0b[01]\+\([u\|U]\=[l\|L]\{0,2}\)\>"

" Python
call Hi("pythonInclude", C_RED)

autocmd FileType python
  \ syn keyword pythonConstant False True None NotImplemented Ellipsis __debug__
hi def link pythonConstant Constant

