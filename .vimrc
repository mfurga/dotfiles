" Vim config
" Author: Mateusz Furga

syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set number
set ai
set hlsearch
set cursorline
set ruler
set mouse=a

"set colorcolumn=80
"hi ColorColumn   guibg=#292a2a
set list
set listchars=trail:⋅,tab:\ \ 

autocmd BufNewFile,BufRead *.asm set ft=nasm
autocmd FileType make set noexpandtab

" Highlights
set termguicolors

" Colors
let C_NONE         = "NONE"
let C_WHITE        = "#f0f0f0"
let C_DARK         = "#262626"
let C_GRAY         = "#858585"
let C_GRAY_LIGHT   = "#949494"
let C_GRAY_LIGHT2  = "#c6c6c6"
let C_GRAY_DARK    = "#2d2d2d"
let C_BLUE         = "#ae81ff"
let C_BLUE_LIGHT   = "#264f78"
let C_BLUE_DARK2   = "#2a4e67"
let C_BLUE_DARK    = "#04395e"
let C_GREEN        = "#00df38"
let C_RED_LIGHT    = "#ffa0a0"
let C_BROWN        = "#673917"
let C_YELLOW       = "#ffdb4c"
let C_YELLOW_LIGHT = "#e6db74"

function Hi(what, guifg, guibg = "NONE", cterm = "NONE")
  exe "hi " . a:what . " guifg=" . a:guifg . " guibg=" . a:guibg . " gui=" . a:cterm
endfunction

call Hi("Normal", C_WHITE, C_DARK)
call Hi("Comment", C_GRAY_LIGHT)
call Hi("String", C_YELLOW_LIGHT)
call Hi("Number", C_BLUE)
call Hi("Type", C_GREEN)
call Hi("Statement", C_YELLOW)
call Hi("Constant", C_YELLOW)
call Hi("Function", C_WHITE)

call Hi("EndOfBuffer", C_DARK)
call Hi("Search", C_WHITE, C_BROWN)
call Hi("Visual", C_NONE, C_BLUE_LIGHT)
call Hi("MatchParen", C_NONE, C_BLUE_LIGHT)
call Hi("SpecialKey", C_WHITE)

" Cursor line
call Hi("LineNr", C_GRAY)
call Hi("CursorLine", C_NONE, C_NONE, "underline")
call Hi("CursorLineNr", C_GRAY_LIGHT2)

" Menu
call Hi("PMenu", C_WHITE, C_GRAY_DARK)
call Hi("PMenuSel", C_WHITE, C_BLUE_DARK)
call Hi("PmenuSbar", C_NONE, C_GRAY_DARK)
call Hi("PmenuThumb", C_NONE, C_BLUE_DARK2)

"hi PMenu         guifg=#f0f0f0 guibg=#2d2d2e
" Selected Item
"hi PmenuSel      guifg=#f0f0f0 guibg=#04395e
"hi PmenuSbar     guibg=#2d2d2e
"hi PmenuThumb    guibg=#2a4e67

"hi Visual        guibg=#264f78
"hi MatchParen    guibg=#264f78
"hi LineNr        guifg=#858585
"hi CursorLine    guibg=NONE
"hi CursorLineNr  guifg=#c6c6c6
"hi SpecialKey    guifg=#f0f0f0

" Tab
hi TabLine       guifg=#c0c0c0 guibg=#404040
hi TabLineSel    guifg=#f0f0f0 guibg=#262626 cterm=NONE
hi TabLineFill   guifg=#232323

hi OverLength    guibg=#673917
match OverLength /\%81v.\+/

" C
"hi PreProc       guifg=#ff7c8b
"hi cOnlyDefine   guifg=#ff7c8b
"hi cOnlyInclude  guifg=#ff7c8b
hi cOnlyPreProc   guifg=#ff7c8b
hi cFormat        guifg=#ffdb4c

hi link cOctalZero Number

"autocmd FileType c
"  \ syn match cNumber 

" Python

autocmd FileType python
  \ syn keyword pythonConstant False True None NotImplemented Ellipsis __debug__
hi def link pythonConstant Constant

hi pythonInclude        guifg=#ff7c8b

"hi pythonDecoratorName  guifg=#ff7c8b

"hi cOnlyInclude guifg=#ff7c8b
"hi cOnlyDefine guifg=#ff7c8b

" major
"hi Normal    ctermfg=15
"hi Comment   ctermfg=248
"hi Constant  ctermfg=207
"hi String    ctermfg=147
"hi Number    ctermfg=111
"hi Statement ctermfg=226
"hi Type      ctermfg=40
" hi PreProc   ctermfg=224

" 228

" misc
"hi LineNr        ctermfg=244
"hi CursorLineNr  ctermfg=252
"hi SpecialKey    ctermfg=244

" old bg=#232627
"hi Normal        guifg=#f0f0f0 guibg=#262626
"hi Comment       guifg=#949494
"hi String        guifg=#e6db74
"hi Number        guifg=#ae81ff
"hi Type          guifg=#00df38
"hi Statement     guifg=#ffdb4c
"hi Constant      guifg=#ffa0a0
"hi Function      cterm=NONE

"hi EndOfBuffer   guifg=#262626
"hi Search        guifg=#f0f0f0 guibg=#673917


