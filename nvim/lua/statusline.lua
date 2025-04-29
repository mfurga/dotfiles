
function mode_name()
  local modes = {
    n = "NORMAL",
    i = "INSERT",
    v = "VISUAL",
    V = "V-LINE",
    [""] = "V-BLOCK",
    c = "COMMAND",
    R = "REPLACE",
    t = "TERMINAL",
    s = "SELECT",
    S = "S-LINE",
  }
  return modes[vim.api.nvim_get_mode().mode] or "UNKNOWN"
end

function git_branch()
  local handle = io.popen("git rev-parse --abbrev-ref HEAD 2>/dev/null")
  if handle then
    local branch = handle:read("*l")
    handle:close()
    if branch ~= nil and branch ~= "" then
      return "  " .. branch .. " "
    end
  end
  return ""
end

vim.o.laststatus = 3 -- pełny statusline zawsze
vim.o.showmode = false -- ukryj domyślne "INSERT", bo dodamy własne

vim.o.statusline = table.concat({
  "%#StatusLineMode#",  -- kolory dla trybu
  " %{v:lua.mode_name()} ", -- aktualny tryb np. NORMAL, INSERT
  "%#StatusLine#",       -- reset koloru

  "%#StatusLineGit#",
  "%{v:lua.git_branch()} ",
  "%#StatusLine#",       -- reset koloru

  " %f ",                -- nazwa pliku z ścieżką względną

  "%=",                  -- podziałka, dzieli statusline na lewo/prawo
  " %{&fileencoding} |",        -- kodowanie (utf-8)
  " %l:%c [%p%%]",         -- procent pliku, linia:kolumna
  "%#StatusLine#",       -- reset koloru
})

vim.api.nvim_set_hl(0, "StatusLineMode", { fg = "#1e1e2e", bg = "#cba6f7", bold = true })
vim.api.nvim_set_hl(0, "StatusLineGit", { fg = "#1e1e2e", bg = "#cba6f7", bold = true })
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#dddddd", bg = "#2d2d2d" })

