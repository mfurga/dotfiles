-- Colors
_G.C = {
  NONE         = "NONE",
  WHITE        = "#f0f0f0",

  DARK         = "#292929",
  DARK         = "#282828",
  DARK_HARD    = "#222222",

  DARK_1       = "#2d2d2d",
  DARK_2       = "#404040",
  DARK_3       = "#555555",

  GRAY         = "#949494",
  GRAY_SOFT    = "#c0c0c0",

  PURPLE       = "#ae81ff",

  BLUE         = "#264f78",
  BLUE_2       = "#5fafff",

  GREEN        = "#57cb8b",
  GREEN_2      = "#a3be8c",

  RED          = "#eb7a8f",
  RED_HARD     = "#bf616a",
  RED_2        = "#ffbaba",

  BROWN        = "#673917",

  YELLOW       = "#ebcb8b",
  YELLOW_LIGHT = "#e6db74",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

hi("@comment",       { fg = C.GRAY })
hi("@string.documentation",   { fg = C.GRAY })

hi("@string",        { fg = C.YELLOW_LIGHT })
hi("@number",        { fg = C.PURPLE })
hi("@number.float",  { fg = C.PURPLE })
hi("@type",          { fg = C.GREEN })
hi("@type.builtin",  { fg = C.GREEN })
hi("@constant",      { fg = C.RED_2 })
hi("@constant.builtin", { fg = C.RED_2 })

hi("@function",      { fg = C.WHITE })
hi("@function.call", { fg = C.WHITE })
hi("@constructor",   { fg = C.WHITE })
hi("@keyword",       { fg = C.RED })
hi("@include",       { fg = C.RED })
hi("@variable",      { fg = C.WHITE })
hi("@module",        { fg = C.WHITE })
hi("@field",         { fg = C.WHITE })
hi("@punctuation",   { fg = C.WHITE })
hi("@operator",      { fg = C.WHITE })


hi("@punctuation.special",   { fg = C.WHITE })
hi("@function.builtin", { fg = C.WHITE })

hi("@variable.builtin", { fg = C.WHITE })

hi("@attribute", { fg = C.RED_2 })
hi("@attribute.builtin", { fg = C.RED_2 })
hi("@keyword.modifier",  { fg = C.RED_2 })
hi("@function.macro",    { fg = C.RED_2 })

hi("@lsp.type.property", { fg = C.WHITE })


hi("Normal",         { fg = C.WHITE, bg = C.DARK })
hi("EndOfBuffer",    { bg = C.DARK })
hi("Search",         { fg = C.WHITE, bg = C.BROWN })
hi("Visual",         { bg = C.BLUE })
hi("MatchParen",     { bg = C.BLUE })
hi("SpecialKey",     { fg = C.WHITE })
hi("LineNr",         { fg = C.DARK_3 })
hi("CursorLine",     { bg = C.DARK_1 })
hi("CursorLineNr",   { fg = C.GRAY_SOFT })
hi("VertSplit",      { fg = C.DARK, bg = C.GRAY })
hi("PMenu",          { fg = C.WHITE, bg = C.DARK_1 })
hi("PMenuSel",       { fg = C.WHITE, bg = C.BLUE })
hi("PmenuSbar",      { bg = C.DARK_1 })
hi("PmenuThumb",     { bg = C.BLUE })
hi("TabLine",        { fg = C.GRAY_SOFT, bg = C.DARK_2 })
hi("TabLineSel",     { fg = C.WHITE, bg = C.DARK })
hi("TabLineFill",    { bg = C.DARK })

hi("DiffAdd", { fg = C.GREEN_2 })
hi("DiffChange", { fg = C.YELLOW })
hi("DiffDelete", { fg = C.RED_HARD })

hi("GitSignsAddNr", { fg = C.GREEN_2 })
hi("GitSignsChangeNr", { fg = C.YELLOW })
hi("GitSignsDeleteNr", { fg = C.RED_HARD })

hi("StatusLineMode", { bold = true })
-- hi("StatusLineGit",  { fg = C.GREEN_2 })
hi("StatusLine",     { fg = C.GRAY_SOFT, bg = C.DARK, bold = true })

-- NvimTree
hi("NvimTreeWinSeparator", { fg = C.DARK_HARD, bg = C.DARK_HARD })
hi("NvimTreeNormal",       { bg = C.DARK_HARD })
hi("NvimTreeEndOfBuffer",  { bg = C.DARK_HARD })
hi("NvimTreeFolderName",   { fg = C.BLUE_2 })
hi("NvimTreeFolderIcon",   { fg = C.BLUE_2 })
hi("NvimTreeOpenedFolderName", { fg = C.BLUE_2 })
hi("NvimTreeFolderArrowClosed", { fg = C.GRAY })

hi("BlinkCmpSignatureHelp", { bg = C.DARK_1 })
hi("BlinkCmpSignatureHelpBorder", { bg = C.DARK_1 })
hi("BlinkCmpDoc", { bg = C.DARK_1 })
hi("BlinkCmpDocBorder", { bg = C.DARK_1 })

