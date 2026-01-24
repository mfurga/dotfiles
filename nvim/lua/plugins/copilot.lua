return {
  {
    "github/copilot.vim",
    init = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true

      vim.keymap.set("i", "<C-L>", function ()
        local s = vim.fn["copilot#GetDisplayedSuggestion"]()
        if type(s) ~= "table" or s.text == "" then
          return ""
        end
        return vim.fn["copilot#Accept"]("<CR>")
      end, { expr = true, silent = true, replace_keycodes = false })
      vim.keymap.set("i", "<C-J>", "<Plug>(copilot-next)", { desc = "Copilot Next" })
      vim.keymap.set("i", "<C-K>", "<Plug>(copilot-previous)", { desc = "Copilot Prev" })
      vim.keymap.set("i", "<C-H>", "<Plug>(copilot-dismiss)", { desc = "Copilot Dismiss" })
    end,
  },
}