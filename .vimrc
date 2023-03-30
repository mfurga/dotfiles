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
set listchars=trail:⋅,tab:\ \ 

autocmd BufNewFile,BufRead *.asm set ft=nasm
autocmd FileType make set noexpandtab

" Highlights (xterm-256color)
" set t_Co=256

set termguicolors

hi Normal        guifg=#eeeeee
hi Comment       guifg=#949494
hi String        guifg=#e6db74
hi Number        guifg=#ae81ff
hi Type          guifg=#00df38
hi Statement     guifg=#ffdb4c

hi Search        guifg=#eeeeee guibg=#673917
hi PMenu         guifg=#eeeeee guibg=#252526
" Selected Item
hi PmenuSel      guifg=#eeeeee guibg=#04395e
hi PmenuSbar     guibg=#252526
hi PmenuThumb    guibg=#2a4e67

hi Visual        guibg=#264f78
hi MatchParen    guibg=#264f78
hi LineNr        guifg=#858585
hi CursorLine    guibg=NONE
hi CursorLineNr  guifg=#c6c6c6
hi SpecialKey    guifg=#eeeeee


" Special for C lang
"hi cDefine       guifg=#ff7c8b
hi PreProc       guifg=#ff7c8b
hi cFormat       guifg=#ffdb4c

"syn match cAsdf "define"
"hi cAsdf guifg=#ff7c8b

" major
hi Normal    ctermfg=15
hi Comment   ctermfg=248
hi Constant  ctermfg=207
hi String    ctermfg=147
hi Number    ctermfg=111
hi Statement ctermfg=226
hi Type      ctermfg=40
" hi PreProc   ctermfg=224

" 228

" misc
hi LineNr        ctermfg=244
hi CursorLineNr  ctermfg=252
hi SpecialKey    ctermfg=244

