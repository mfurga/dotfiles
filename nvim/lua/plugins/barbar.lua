return {
  'romgrk/barbar.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- dla ikon
    'lewis6991/gitsigns.nvim'      -- (opcjonalne) integracja z git
  },
  init = function()
    vim.g.barbar_auto_setup = false -- jeśli chcesz pełną kontrolę nad konfiguracją
  end,
  config = function()
    require('barbar').setup {
      -- Tutaj możesz dać swoją konfigurację
      animation = true,
      auto_hide = false,
      tabpages = true,
      clickable = true,
      -- więcej opcji na https://github.com/romgrk/barbar.nvim#configuration
    }
  end,
}
