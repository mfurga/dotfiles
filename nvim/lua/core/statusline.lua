
function mode_name()
  local modes = {
    n = "NORMAL",
    i = "INSERT",
    v = "VISUAL",
    V = "V-L",
    [""] = "V-B",
    c = "C",
    R = "R",
    t = "T",
    s = "S",
    S = "S-L",
  }
  return modes[vim.api.nvim_get_mode().mode] or "UNKNOWN"
end

function git_branch()
  local handle = io.popen("git rev-parse --abbrev-ref HEAD 2>/dev/null")
  if handle then
    local branch = handle:read("*l")
    handle:close()
    if branch ~= nil and branch ~= "" then
      return "  " .. branch .. " "
    end
  end
  return ""
end

vim.opt.laststatus = 3
vim.opt.showmode = false

vim.opt.statusline = table.concat({
  "%#StatusLineMode#",
  " %{v:lua.mode_name()} ",
  "%#StatusLine#",

  " %f ",

  "%=",
 "%#StatusLineGit#",
-- "%{v:lua.git_branch()} ",
-- "%{mode() ==# 'n' ? v:lua.git_diff_no_plugin() : ''} ",
 "%#StatusLine#",

  " %{&fileencoding} |",
  " %l:%c [%p%%]",
  "%#StatusLine#"
})
vim.api.nvim_set_hl(0, "StatusLineMode", { fg = "#aa9c87", bold = true })
-- vim.api.nvim_set_hl(0, "StatusLineGit", { fg = "#1e1e2e", bg = "#cba6f7", bold = true })
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#aa9c87", bg = "#292929" })

