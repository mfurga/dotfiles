return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "lewis6991/gitsigns.nvim"
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    require("barbar").setup {
      animation = false,
      auto_hide = true,
      tabpages = true,
      clickable = true,
      icons = {
        buffer_index = false,
        buffer_number = false,

        separator = { left = "", right = "" },
        separator_at_end = false,
        modified = { enabled = false },
        left_trunc_marker = "",
        right_trunc_marker = "",
        pinned = { enabled = false },
        filetype = { enabled = false },
        filetype = {
          enabled = false
        }
      }
    }
  end,
}
