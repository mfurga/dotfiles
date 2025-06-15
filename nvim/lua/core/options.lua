-- General
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.relativenumber = true
vim.opt.cmdheight = 0
vim.opt.wrap = false
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.cursorline = true
vim.opt.ruler = true
vim.opt.mouse = "a"
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20"

vim.opt.list = true
vim.opt.listchars = { trail = "⋅" }
vim.opt.syntax = "on"
vim.opt.termguicolors = true
vim.opt.fillchars:append({ eob = " " })
vim.g.mapleader = " "

vim.api.nvim_set_keymap("i", '"', '""<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "'", "''<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "(", '()<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "[", '[]<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "{", '{}<Left>', { noremap = true, silent = true })

-- keymaps

local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader><leader>", telescope.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- lsp

vim.lsp.config.clangd = {
  cmd = { "clangd", "--background-index" },
  root_markers = { "compile_commands.json", "compile_flags.txt" },
  filetypes = { "c", "cpp" },
}

vim.lsp.config.pyright = {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
}

vim.lsp.config.rust_analyzer = {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_dir = vim.fs.root(0, { "Cargo.toml", ".git" }),
  settings = {
    ["rust-analyzer"] = { completion = { addCallParenthesis = false } }
  },
}

vim.lsp.enable({"clangd", "pyright", "rust_analyzer"})

vim.diagnostic.config({
  virtual_text = {
    severity = vim.diagnostic.severity.ERROR,
  },
  signs = {
    severity = vim.diagnostic.severity.ERROR,
  },
  underline = {
    severity = vim.diagnostic.severity.ERROR,
  },
  update_in_insert = false,
})

