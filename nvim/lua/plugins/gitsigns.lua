return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add          = { text = "" },
        change       = { text = "" },
        delete       = { text = "" },
        topdelete    = { text = "" },
        changedelete = { text = "" },
      },
      signcolumn = true,
      numhl = true,
      linehl = false,
      watch_gitdir = {
        interval = 1000,
        follow_files = true
      },
      current_line_blame = false,
      update_debounce = 100,
    })
  end,
}

