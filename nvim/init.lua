-- Neo Vim config
-- Author: Mateusz Furga <matfurga@gmail.com>

vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set nuw=6")
vim.cmd("set ai")
vim.cmd("set hlsearch")
vim.cmd("set cursorline")
vim.cmd("set ruler")
vim.cmd("set mouse=a")
vim.cmd("set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20")

vim.cmd("set list")
vim.cmd("set listchars=trail:⋅")

require("statusline")

-- Syntax highlighting
vim.cmd("syntax on")
vim.cmd("set termguicolors")

C_NONE         = "NONE"
C_WHITE        = "#f0f0f0"
C_DARK         = "#262626"
C_GRAY         = "#858585"
C_GRAY_LIGHT   = "#949494"
C_GRAY_LIGHT2  = "#c6c6c6"
C_GRAY_LIGHT3  = "#c0c0c0"
C_GRAY_DARK    = "#2d2d2d"
C_GRAY_DARK2   = "#404040"
C_GRAY_DARK3   = "#444444"
C_PURPLE       = "#ae81ff"
C_BLUE         = "#04395e"
C_BLUE_LIGHT   = "#264f78"
C_BLUE_LIGHT2  = "#2a4e67"
C_GREEN        = "#00db5c"
C_RED          = "#ff7c8b"
C_RED_LIGHT    = "#ffa0a0"
C_BROWN        = "#673917"
C_YELLOW       = "#ffdb4c"
C_YELLOW_LIGHT = "#e6db74"
C_GOLD         = "#ffc830"

function Hi(what, guifg, guibg, gui)
  if not guibg then
    guibg=C_NONE
  end

  if not gui then
    gui=C_NONE
  end

  vim.cmd("hi " .. what .. " guifg=" .. guifg .. " guibg=" .. guibg .. " gui=" .. gui)
end

Hi("Normal", C_WHITE, C_DARK)
Hi("Comment", C_GRAY_LIGHT)
Hi("String", C_YELLOW_LIGHT)
Hi("Number", C_PURPLE)
Hi("Type", C_GREEN)
Hi("Statement", C_YELLOW)
Hi("Constant", C_RED_LIGHT)
Hi("Function", C_WHITE)
Hi("Special", C_GOLD)
Hi("EndOfBuffer", C_DARK)
Hi("Search", C_WHITE, C_BROWN)
Hi("Visual", C_NONE, C_BLUE_LIGHT)
Hi("MatchParen", C_NONE, C_BLUE_LIGHT)
Hi("SpecialKey", C_WHITE)

-- Cursor line
Hi("LineNr", C_GRAY_DARK3)
Hi("CursorLine", C_NONE, C_NONE, "underline")
Hi("CursorLineNr", C_GRAY_LIGHT3)

-- Hi("StatusLine", C_WHITE, C_GRAY_DARK3)
Hi("VertSplit", C_DARK, C_GRAY)

-- Menu
Hi("PMenu", C_WHITE, C_GRAY_DARK)
Hi("PMenuSel", C_WHITE, C_BLUE)
Hi("PmenuSbar", C_NONE, C_GRAY_DARK)
Hi("PmenuThumb", C_NONE, C_BLUE_LIGHT2)

-- Tabs
Hi("TabLine", C_GRAY_LIGHT3, C_GRAY_DARK2)
Hi("TabLineSel", C_WHITE, C_DARK, C_NONE)
Hi("TabLineFill", C_DARK)

-- NvimTree
C_TEST = "#202020"
Hi("NvimTreeWinSeparator", C_TEST, C_TEST)
Hi("NvimTreeNormal", C_NONE, C_TEST)

C_FOLDER = "#5fafff"
Hi("NvimTreeFolderName", C_FOLDER)
Hi("NvimTreeFolderIcon", C_FOLDER)
Hi("NvimTreeOpenedFolderName", C_FOLDER)
Hi("NvimTreeFolderArrowClosed", C_GRAY_LIGHT)

require("config.lazy")
local telescope = require("telescope.builtin")
vim.keymap.set("n", "ff", telescope.find_files, { desc = "Telescope find files" })

