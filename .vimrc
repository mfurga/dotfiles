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

inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>

" Highlights
set termguicolors

" old bg=#232627
hi Normal        guifg=#f0f0f0 guibg=#262626
hi Comment       guifg=#949494
hi String        guifg=#e6db74
hi Number        guifg=#ae81ff
hi Type          guifg=#00df38
hi Statement     guifg=#ffdb4c

hi EndOfBuffer   guifg=#262626
hi Search        guifg=#f0f0f0 guibg=#673917
hi PMenu         guifg=#f0f0f0 guibg=#2d2d2e
" Selected Item
hi PmenuSel      guifg=#f0f0f0 guibg=#04395e
hi PmenuSbar     guibg=#2d2d2e
hi PmenuThumb    guibg=#2a4e67

hi Visual        guibg=#264f78
hi MatchParen    guibg=#264f78
hi LineNr        guifg=#858585
hi CursorLine    guibg=NONE
hi CursorLineNr  guifg=#c6c6c6
hi SpecialKey    guifg=#f0f0f0

" Tab
hi TabLine       guifg=#c0c0c0 guibg=#404040
hi TabLineSel    guifg=#f0f0f0 guibg=#262626 cterm=NONE
hi TabLineFill   guifg=#232323

hi OverLength    guibg=#673917
match OverLength /\%81v.\+/

" Special for C lang
hi PreProc       guifg=#ff7c8b
"hi cOnlyDefine   guifg=#ff7c8b
"hi cOnlyInclude  guifg=#ff7c8b
hi cFormat       guifg=#ffdb4c

"syn match pythonNumber "\<0[xX]\x\+"
"syn match pythonNumber "\<0[bB][01]\+"

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

