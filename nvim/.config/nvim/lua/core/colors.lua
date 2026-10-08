-- Colors
_G.C = {
  NONE         = "NONE",

  GREY_0       = "#1b181b",
  GREY_1       = "#292329",
  GREY_2       = "#695d69",
  GREY_3       = "#776977",
  GREY_4       = "#9e8f9e",
  GREY_5       = "#ab9bab",
  GREY_6       = "#d8cad8",
  GREY_7       = "#f7f3f7",

  BRICK_RED    = "#ca402b",
  BURNT_ORAGE  = "#a65926",
  OCHRE        = "#bb8a35",
  OLIVE        = "#918b3b",
  TEAL         = "#159393",
  BLUE         = "#516aec",
  PURPLE       = "#7b59c0",
  PINK         = "#cc33cc",

  GREEN        = "#6f9a8e",
  RED          = "#c94a5a",
  RED_SOFT     = "#d98994"

-- RED        = "#c94a5a"
-- RED_HARD   = "#e1455d"
-- RED_BLACK   = "#7f2e3b"
-- RED_SOFT   = "#d98994"
-- RED_HARD     = "#bf616a",
-- BROWN        = "#673917",
-- OLIVE_LIGHT = "#bb8a35",
}

_G.C.TEXT = GREY_5
_G.C.BACKGROUND = GREY_0

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- vim.keymap.set("n", "mm", function()
--   vim.cmd("luafile ~/.config/nvim/lua/core/colors.lua")
-- end)

hi("Normal",         { fg = C.TEXT, bg = C.BACKGROUND })
hi("NormalFloat",    { fg = C.TEXT, bg = C.BACKGROUND })
hi("Title",          { fg = C.TEXT, bg = C.BACKGROUND })
hi("EndOfBuffer",    { bg = C.BACKGROUND })
hi("Search",         { bg = C.OCHRE })
hi("CurSearch",      { bg = C.BURNT_ORAGE })
hi("IncSearch",      { bg = C.OCHRE })
hi("Visual",         { bg = C.GREY_1 })
hi("MatchParen",     { bg = C.GREY_1 })
hi("SpecialKey",     { fg = C.TEXT })
hi("LineNr",         { fg = C.GREY_1 })
hi("CursorLine",     { bg = C.NONE })
hi("CursorLineNr",   { fg = C.GREEN_2 })
hi("CursorLineNr",   { fg = C.PURPLE })
hi("VertSplit",      { fg = C.DARK, bg = C.GREY_2 })
hi("PMenu",          { fg = C.TEXT, bg = C.BACKGROUND })
hi("PMenuSel",       { fg = C.OLIVE, bg = C.GREY_1 })
hi("PmenuSbar",      { bg = C.BACKGROUND })
hi("PmenuThumb",     { bg = C.PURPLE })
hi("TooLong",        { bg = C.PINK })

hi("TabLine",        { fg = C.TEXT, bg = C.BACKGROUND })
hi("TabLineSel",     { fg = C.TEXT, bg = C.BACKGROUND })
hi("TabLineFill",    { bg = C.BACKGROUND })

hi("DiagnosticError",   { fg = C.RED })
hi("DiagnosticWarning",    { fg = C.OCHRE })
hi("DiagnosticUnderlineError",   {  sp = C.RED, undercurl = true })

hi("CopilotSuggestion", { fg = C.GREY_2, italic = true })
hi("CopilotAnnotation", { fg = C.OLIVE, italic = true })

hi("DiffAdd", { fg = C.GREEN })
hi("DiffChange", { fg = C.OLIVE })
hi("DiffDelete", { fg = C.RED })

hi("GitSignsAddNr", { fg = C.GREEN })
hi("GitSignsChangeNr", { fg = C.OLIVE })
hi("GitSignsDeleteNr", { fg = C.RED })

hi("StatusLine",     { fg = C.GREY_3, bg = C.GREY_1 })
hi("StatusLineMode", { fg = "#513a7e", bg = C.GREY_1 })
hi("StatusLineGit",  { fg = C.TEXT })

hi("WinBar",        { fg = C.GREY_3, bg = C.GREY_0, bold = false})
hi("WinBarGit",     { fg = C.GREY_3, bg = C.GREY_0 })

-- NvimTree
hi("NvimTreeWinSeparator", { fg = C.BACKGROUND, bg = C.BACKGROUND })
hi("NvimTreeNormal",       { bg = C.BACKGROUND })
hi("NvimTreeEndOfBuffer",  { bg = C.BACKGROUND })
hi("NvimTreeFolderName",   { fg = C.BLUE })
hi("NvimTreeFolderIcon",   { fg = C.BLUE })
hi("NvimTreeOpenedFolderName", { fg = C.BLUE })
hi("NvimTreeFolderArrowClosed", { fg = C.GREY_2 })

hi("BlinkCmpSignatureHelp",       { bg = C.BACKGROUND })
hi("BlinkCmpSignatureHelpBorder", { bg = C.BACKGROUND })
hi("BlinkCmpDoc", { bg = C.BACKGROUND })
hi("BlinkCmpDocBorder", { bg = C.BACKGROUND })

-- syntax 

hi("Comment",      { fg = C.GREY_2 })
hi("SpecialComment", { fg = C.PINK })
hi("String",       { fg = C.OLIVE })
hi("Character",    { fg = C.OLIVE })
hi("Number",       { fg = C.PURPLE })
hi("Float",        { fg = C.PURPLE })
hi("Type",         { fg = C.GREEN })
hi("StorageClass", { fg = C.GREEN })
hi("Typedef",     { fg = C.TEXT })
hi("Constant",     { fg = C.RED_SOFT })
hi("Whitespace",   { fg = C.GREY_2 })
hi("Function",     { fg = C.TEXT }) -- TODO:
hi("Constructor", { fg = C.TEXT })
hi("Conditional", { fg = C.RED })
hi("Repeat",      { fg = C.RED })
hi("Structure",   { fg = C.RED })
hi("Statement",   { fg = C.RED })
hi("Label",       { fg = C.RED })
hi("Keyword",     { fg = C.RED })
hi("Include",     { fg = C.RED })
hi("PreProc",     { fg = C.RED })
hi("Define",      { fg = C.RED })
hi("Identifier",  { fg = C.TEXT })
hi("Variable",    { fg = C.TEXT })
hi("Field",       { fg = C.TEXT })
hi("Operator",    { fg = C.TEXT })
hi("Module",      { fg = C.TEXT })
hi("Delimiter",        { fg = C.TEXT })
hi("Special",          { fg = C.RED_SOFT })
hi("SpecialChar",      { fg = C.RED_SOFT })
hi("Boolean",          { fg = C.RED_SOFT })
hi("FunctionBuiltin",  { fg = C.TEXT })
hi("VariableBuiltin",  { fg = C.TEXT })
hi("Attribute",        { fg = C.RED_SOFT })
hi("Macro",            { fg = C.RED_SOFT })
hi("Todo",             { fg = C.PINK, bold = true })

-- Links

-- Treesitter
vim.api.nvim_set_hl(0, '@variable', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@variable.builtin', { fg = C.RED_SOFT })
vim.api.nvim_set_hl(0, '@variable.parameter', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@variable.parameter.builtin', { link = '@variable.builtin' })
vim.api.nvim_set_hl(0, '@variable.member', { fg = gui04, ctermfg = cterm04 })
vim.api.nvim_set_hl(0, '@constant', { link = 'Constant' })
vim.api.nvim_set_hl(0, '@constant.builtin', { link = 'Constant' })
vim.api.nvim_set_hl(0, '@constant.macro', { link = 'Constant' })
vim.api.nvim_set_hl(0, '@module', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@module.builtin', { fg = gui05, ctermfg = cterm05, italic = true })
vim.api.nvim_set_hl(0, '@label', { link = 'Tag' })
vim.api.nvim_set_hl(0, '@string', { link = 'String' })
vim.api.nvim_set_hl(0, '@string.documentation', { link = 'Comment' })
vim.api.nvim_set_hl(0, '@string.regexp', { link = 'SpecialComment' })
vim.api.nvim_set_hl(0, '@string.escape', { link = 'SpecialComment' })
vim.api.nvim_set_hl(0, '@string.special', { link = 'SpecialComment' })
vim.api.nvim_set_hl(0, '@string.special.symbol', { link = 'SpecialComment' })
vim.api.nvim_set_hl(0, '@string.special.path', { fg = gui0D, ctermfg = cterm0D, italic = true })
vim.api.nvim_set_hl(0, '@string.special.url', { fg = gui08, ctermfg = cterm08, italic = true })
vim.api.nvim_set_hl(0, '@character', { link = 'Character' })
vim.api.nvim_set_hl(0, '@character.special', { link = 'SpecialChar' })
vim.api.nvim_set_hl(0, '@boolean', { link = 'Boolean' })
vim.api.nvim_set_hl(0, '@number', { link = 'Number' })
vim.api.nvim_set_hl(0, '@number.float', { link = 'Float' })
vim.api.nvim_set_hl(0, '@type', { link = 'Type' })
vim.api.nvim_set_hl(0, '@type.builtin', { link = 'Type' })
vim.api.nvim_set_hl(0, '@type.definition', { link = 'Typedef' })
vim.api.nvim_set_hl(0, '@attribute', { link = 'Special' })
vim.api.nvim_set_hl(0, '@attribute.builtin', { fg = gui0C, ctermfg = cterm0C, italic = true })
vim.api.nvim_set_hl(0, '@property', { link = '@variable.member' })
vim.api.nvim_set_hl(0, '@function', { link = 'Function' })
vim.api.nvim_set_hl(0, '@function.builtin', { link = 'Function' })
vim.api.nvim_set_hl(0, '@function.call', { link = '@function' })
vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })
vim.api.nvim_set_hl(0, '@function.method', { link = 'Function' })
vim.api.nvim_set_hl(0, '@function.method.call', { link = '@function.method' })
vim.api.nvim_set_hl(0, '@constructor', { link = 'Function' })
vim.api.nvim_set_hl(0, '@operator', { link = 'Operator' })
vim.api.nvim_set_hl(0, '@keyword', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@keyword.coroutine', { link = 'Repeat' })
vim.api.nvim_set_hl(0, '@keyword.function', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@keyword.operator', { link = 'Operator' })
vim.api.nvim_set_hl(0, '@keyword.import', { link = 'Include' })
vim.api.nvim_set_hl(0, '@keyword.type', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@keyword.modifier', { link = 'Repeat' })
vim.api.nvim_set_hl(0, '@keyword.repeat', { link = 'Repeat' })
vim.api.nvim_set_hl(0, '@keyword.return', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@keyword.debug', { link = 'Debug' })
vim.api.nvim_set_hl(0, '@keyword.exception', { link = 'Exception' })
vim.api.nvim_set_hl(0, '@keyword.conditional', { link = 'Conditional' })
vim.api.nvim_set_hl(0, '@keyword.ternary', { link = 'Conditional' })
vim.api.nvim_set_hl(0, '@keyword.directive', { link = 'PreProc' })
vim.api.nvim_set_hl(0, '@keyword.directive.define', { link = 'Define' })
vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })
vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
vim.api.nvim_set_hl(0, '@punctuation.special', { link = 'Special' })
vim.api.nvim_set_hl(0, '@comment', { link = 'Comment' })
vim.api.nvim_set_hl(0, '@comment.documentation', { link = 'Comment' })
vim.api.nvim_set_hl(0, '@comment.error', { link = 'Todo' })
vim.api.nvim_set_hl(0, '@comment.warning', { link = 'Todo' })
vim.api.nvim_set_hl(0, '@comment.note', { link = 'Todo' })
vim.api.nvim_set_hl(0, '@comment.todo', { link = 'Todo' })
vim.api.nvim_set_hl(0, '@markup.strong', { bold = true })
vim.api.nvim_set_hl(0, '@markup.italic', { italic = true })
vim.api.nvim_set_hl(0, '@markup.strikethrough', { strikethrough = true })
vim.api.nvim_set_hl(0, '@markup.underline', { underline = true })
vim.api.nvim_set_hl(0, '@markup.heading', { link = 'Title' })
vim.api.nvim_set_hl(0, '@markup.quote', { fg = gui0C, ctermfg = cterm0C })
vim.api.nvim_set_hl(0, '@markup.math', { link = 'Special' })
vim.api.nvim_set_hl(0, '@markup.link', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, '@markup.link.label', { link = '@markup.link' })
vim.api.nvim_set_hl(0, '@markup.link.url', {  fg = gui09, ctermfg = cterm09 })
vim.api.nvim_set_hl(0, '@markup.raw', { fg = gui0B, ctermfg = cterm0B })
vim.api.nvim_set_hl(0, '@markup.raw.block', { link = '@markup.raw' })
vim.api.nvim_set_hl(0, '@markup.list', { link = 'SpecialChar' })
vim.api.nvim_set_hl(0, '@markup.list.checked', { link = 'DiagnosticOk' })
vim.api.nvim_set_hl(0, '@markup.list.unchecked', { link = 'DiagnosticError' })
vim.api.nvim_set_hl(0, '@diff.plus', { link = 'Added' })
vim.api.nvim_set_hl(0, '@diff.minus', { link = 'Removed' })
vim.api.nvim_set_hl(0, '@diff.delta', { link = 'Changed' })
vim.api.nvim_set_hl(0, '@tag', { link = 'Tag' })
vim.api.nvim_set_hl(0, '@tag.builtin', { fg = gui09, ctermfg = cterm09, italic = true })
vim.api.nvim_set_hl(0, '@tag.attribute', { link = 'Special' })
vim.api.nvim_set_hl(0, '@tag.delimiter', { link = 'Delimiter' })

-- LSP
vim.api.nvim_set_hl(0, '@lsp.type.class', { link = '@type' })
vim.api.nvim_set_hl(0, '@lsp.type.comment', { link = '@comment' })
vim.api.nvim_set_hl(0, '@lsp.type.decorator', { link = '@attribute' })
vim.api.nvim_set_hl(0, '@lsp.type.enum', { link = '@type' })
vim.api.nvim_set_hl(0, '@lsp.type.enumMember', { link = '@constant' })
vim.api.nvim_set_hl(0, '@lsp.type.event', { link = '@type' })
vim.api.nvim_set_hl(0, '@lsp.type.function', { link = '@function' })
vim.api.nvim_set_hl(0, '@lsp.type.interface', { link = '@type' })
vim.api.nvim_set_hl(0, '@lsp.type.keyword', { link = '@keyword' })
vim.api.nvim_set_hl(0, '@lsp.type.macro', { link = '@function.macro' })
vim.api.nvim_set_hl(0, '@lsp.type.method', { link = '@function.method' })
vim.api.nvim_set_hl(0, '@lsp.type.modifier', { link = '@type.modifier' })
vim.api.nvim_set_hl(0, '@lsp.type.namespace', { link = '@module' })
vim.api.nvim_set_hl(0, '@lsp.type.number', { link = '@number' })
vim.api.nvim_set_hl(0, '@lsp.type.operator', { link = '@operator' })
vim.api.nvim_set_hl(0, '@lsp.type.parameter', { link = '@variable.parameter' })
vim.api.nvim_set_hl(0, '@lsp.type.property', { link = '@property' })
vim.api.nvim_set_hl(0, '@lsp.type.regexp', { link = '@string.regexp' })
vim.api.nvim_set_hl(0, '@lsp.type.string', { link = '@string' })
vim.api.nvim_set_hl(0, '@lsp.type.struct', { link = '@type' })
vim.api.nvim_set_hl(0, '@lsp.type.type', { link = '@type' })
vim.api.nvim_set_hl(0, '@lsp.type.typeParameter', { link = '@variable.parameter' })
vim.api.nvim_set_hl(0, '@lsp.type.variable', { link = '@variable' })

-- LSP: Rust
vim.api.nvim_set_hl(0, '@lsp.type.builtinType.rust', { link = '@type.builtin' })
vim.api.nvim_set_hl(0, '@lsp.type.escapeSequence.rust', { link = '@string.escape' })
vim.api.nvim_set_hl(0, '@lsp.type.formatSpecifier.rust', { link = '@operator' })
vim.api.nvim_set_hl(0, '@lsp.type.lifetime.rust', { link = '@attribute' })
vim.api.nvim_set_hl(0, '@lsp.type.punctuation.rust', { link = '@punctuation.delimiter' })
vim.api.nvim_set_hl(0, '@lsp.type.selfKeyword.rust', { link = '@variable.builtin' })
vim.api.nvim_set_hl(0, '@lsp.type.selfTypeKeyword.rust', { link = '@type.builtin' })
vim.api.nvim_set_hl(0, '@lsp.mod.attribute', { italic = true })
vim.api.nvim_set_hl(0, '@lsp.mod.controlFlow', { link = '@keyword.repeat' })
vim.api.nvim_set_hl(0, '@lsp.mod.intraDocLink.rust', { link = '@markup.link' })
vim.api.nvim_set_hl(0, '@lsp.typemod.generic.injected.rust', { link = '@variable' })
vim.api.nvim_set_hl(0, '@lsp.typemod.operator.controlFlow.rust', { link = '@operator' })
vim.api.nvim_set_hl(0, '@lsp.typemod.function.associated.rust', { link = '@function.method' })

-- LSP: Lua
vim.api.nvim_set_hl(0, '@lsp.typemod.keyword.documentation.lua', { link = '@tag' })

-- LSP: Markdown
vim.api.nvim_set_hl(0, '@lsp.type.class.markdown', { link = '@lsp' })
