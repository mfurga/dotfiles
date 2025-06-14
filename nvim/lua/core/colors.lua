vim.cmd("syntax on")
vim.opt.termguicolors = true

local C = {
  NONE         = "NONE",
  WHITE        = "#f0f0f0",
  DARK         = "#292929",
  DARK         = "#282828",
  GRAY         = "#858585",
  GRAY_LIGHT   = "#949494",
  GRAY_LIGHT2  = "#c6c6c6",
  GRAY_LIGHT3  = "#c0c0c0",
  GRAY_DARK    = "#2d2d2d",
  GRAY_DARK2   = "#404040",
  GRAY_DARK3   = "#555555",
  PURPLE       = "#ae81ff",
  BLUE         = "#04395e",
  BLUE_LIGHT   = "#264f78",
  BLUE_LIGHT2  = "#2a4e67",
  GREEN        = "#00db5c",
  RED          = "#ff7c8b",
  RED_LIGHT    = "#ffa0a0",
  RED_LIGHT2   = "#ffbaba";
  BROWN        = "#673917",
  YELLOW       = "#ffdb4c",
  YELLOW_LIGHT = "#e6db74",
  GOLD         = "#ffc830",
  TEST         = "#222222",
  FOLDER       = "#5fafff",
}

-- Helpers
local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

hi("@comment",       { fg = C.GRAY_LIGHT })
hi("@string",        { fg = C.YELLOW_LIGHT })
hi("@number",        { fg = C.PURPLE })
hi("@number.float",  { fg = C.PURPLE })
hi("@type",          { fg = C.GREEN })
hi("@constant",      { fg = C.RED_LIGHT })
hi("@function",      { fg = C.WHITE })
hi("@function.call", { fg = C.WHITE })
hi("@special",       { fg = C.GOLD })
hi("@keyword",       { fg = "#eb7a8f" })  -- corresponds to "Statement"
hi("@include",       { fg = "#eb7a8f" })  -- for `import` / `from` in Python
hi("@variable",      { fg = C.WHITE })
hi("@module",        { fg = C.WHITE })
hi("@field",         { fg = C.WHITE })
hi("@parameter",     { fg = C.GRAY_LIGHT2 })
hi("@attribute",     { fg = C.YELLOW_LIGHT })
hi("@punctuation",   { fg = C.WHITE })
hi("@operator",      { fg = C.WHITE })

local test = "#7aeb88"
local test = "#62e79d"
local test = "#7aebac"
local test = "#43db86"
--local test = "#61c18d"
local test = "#5bc58a"
local test = "#67c792"
local test = "#5eb585"
local test = "#4db97e"
local test = "#57cb8b"


hi("@type", { fg = test })
hi("@type.builtin", { fg = test })


hi("@string.documentation",   { fg = C.GRAY_LIGHT })

hi("@punctuation.special",   { fg = C.WHITE })
hi("@constant.builtin", { fg = C.RED_LIGHT })
hi("@function.builtin", { fg = C.WHITE })

hi("@variable.builtin", { fg = C.WHITE })

hi("@attribute", { fg = C.RED_LIGHT2 })
hi("@attribute.builtin", { fg = C.RED_LIGHT2 })

hi("@lsp.type.property", { fg = C.WHITE })

hi("@keyword.modifier",  { fg = C.RED_LIGHT2 })


hi("Normal",         { fg = C.WHITE, bg = C.DARK })
hi("EndOfBuffer",    { bg = C.DARK })
hi("Search",         { fg = C.WHITE, bg = C.BROWN })
hi("Visual",         { bg = C.BLUE_LIGHT })
hi("MatchParen",     { bg = C.BLUE_LIGHT })
hi("SpecialKey",     { fg = C.WHITE })
hi("LineNr",         { fg = C.GRAY_DARK3 })
hi("CursorLine",     { underline = true, sp = "#777777" })

hi("CursorLineNr",   { fg = C.GRAY_LIGHT3 })
hi("VertSplit",      { fg = C.DARK, bg = C.GRAY })
hi("PMenu",          { fg = C.WHITE, bg = C.GRAY_DARK })
hi("PMenuSel",       { fg = C.WHITE, bg = C.BLUE })
hi("PmenuSbar",      { bg = C.GRAY_DARK })
hi("PmenuThumb",     { bg = C.BLUE_LIGHT2 })
hi("TabLine",        { fg = C.GRAY_LIGHT3, bg = C.GRAY_DARK2 })
hi("TabLineSel",     { fg = C.WHITE, bg = C.DARK })
hi("TabLineFill",    { bg = C.DARK })

-- NvimTree
hi("NvimTreeWinSeparator", { fg = C.TEST, bg = C.TEST })
hi("NvimTreeNormal",       { bg = C.TEST })
hi("NvimTreeFolderName",   { fg = C.FOLDER })
hi("NvimTreeFolderIcon",   { fg = C.FOLDER })
hi("NvimTreeOpenedFolderName", { fg = C.FOLDER })
hi("NvimTreeFolderArrowClosed", { fg = C.GRAY_LIGHT })

