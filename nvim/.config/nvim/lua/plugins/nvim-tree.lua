return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      view = {
        side = "left",
        width = 25,
        preserve_window_proportions = true
      },
    }
  end,
}
