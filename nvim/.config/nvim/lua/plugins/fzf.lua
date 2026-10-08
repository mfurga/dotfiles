return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    winopts = {
      border = "none",
      height = 0.6,
      width  = 0.8,
      preview = {
        hidden = true,
        border = "none",
        horizontal = "right:40%",
      },
    },
    grep = {
      rg_opts = "--column --line-number --no-heading --color=always --colors 'line:fg:7' --colors 'line:fg:7' --colors 'path:fg:7' --colors 'match:fg:2' --colors 'match:style:nobold'   --smart-case --max-columns=4096 -e",
    },
  }
}
