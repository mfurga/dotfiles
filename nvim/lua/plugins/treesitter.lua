
return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  config = function()
    local ok, configs = pcall(require, "nvim-treesitter.configs")
    if not ok then
      vim.notify("nvim-treesitter is not available", vim.log.levels.WARN)
      return
    end

    configs.setup({
      ensure_installed = { "python", "rust", "javascript" },
      highlight = { enable = true },
    })
  end,
}
