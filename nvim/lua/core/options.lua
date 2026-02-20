-- General
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.numberwidth = 3
vim.opt.signcolumn = "yes:1"
vim.opt.cmdheight = 0
vim.opt.wrap = false
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.ruler = true
vim.opt.mouse = "a"
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20"

vim.opt.list = true
vim.opt.listchars = { trail = "⋅", tab = "  " }
vim.opt.syntax = "on"
vim.opt.termguicolors = true
vim.opt.fillchars:append({ eob = " " })
vim.g.mapleader = " "

-- keymaps

vim.keymap.set("i", "<C-C>", "<Esc>", { silent = true, desc = "Ctrl-C behaves like Esc" })

vim.keymap.set("i", '"', '""<Left>', { noremap = true, silent = true })
vim.keymap.set("i", "'", "''<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "(", '()<Left>', { noremap = true, silent = true })
vim.keymap.set("i", "[", '[]<Left>', { noremap = true, silent = true })
vim.keymap.set("i", "{", '{}<Left>', { noremap = true, silent = true })

local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader>f", fzf.files, { desc = "Find files" })
vim.keymap.set("n", "<leader>s", fzf.live_grep, { desc = "Search text" })
vim.keymap.set("n", "<leader><leader>", fzf.buffers, { desc = "Find buffers" })

-- lsp

vim.lsp.config.clangd = {
  cmd = { "clangd", "--background-index" },
  root_markers = { "compile_commands.json", "compile_flags.txt" },
  filetypes = { "c", "cpp" },
}

-- vim.lsp.config.pyright.setup({
--   cmd = { "pyright-langserver", "--stdio" },
--   filetypes = { "python" },
--   root_dir = require("lspconfig.util").root_pattern(".git", "main.py"),
--   settings = {
--     python = {
--       analysis = {
--         autoSearchPaths = false,
--         useLibraryCodeForTypes = true,
--         diagnosticMode = "workspace",
--         extraPaths = { "." },
--       },
--     },
--   },
-- })

vim.lsp.config.rust_analyzer = {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_dir = vim.fs.root(0, { "Cargo.toml", ".git" }),
  settings = {
    ["rust-analyzer"] = { completion = { addCallParenthesis = false } }
  },
}

vim.lsp.config.tsserver = {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  single_file_support = true,
  settings = {
    completions = { completeFunctionCalls = true },
  },
}

vim.lsp.enable({"clangd", "pyright", "rust_analyzer", "tsserver"})

-- vim.fn.sign_define("DiagnosticSignError", {
--   text = "",
--   texthl = "",
--   numhl = "",
--   linehl = "ErrorLine"
-- })

-- vim.cmd([[
--   highlight ErrorLine guibg=#51202A guifg=NONE
-- ]])

vim.diagnostic.config({
  virtual_text = {
    severity = vim.diagnostic.severity.ERROR,
    prefix = "●"
  },
  signs = false,
  -- signs = {
  --   severity = vim.diagnostic.severity.ERROR,
  -- },
  underline = {
    severity = vim.diagnostic.severity.ERROR,
    prefix = ""
  },
  update_in_insert = false,
})

