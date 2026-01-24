function mode_name()
  local modes = {
    n = "NORMAL",
    i = "INSERT",
    v = "VISUAL",
    V = "VISUAL LINE",
    [""] = "VISUAL BLOCK",
    c = "COMMAND",
    R = "REPLACE",
    t = "TERMINAL",
    s = "SELECT",
    S = "SELECT LINE",
  }
  return modes[vim.api.nvim_get_mode().mode] or "UNKNOWN"
end

function filetype_icon()
  local devicons = require("nvim-web-devicons")

  local filename = vim.fn.expand("%:t")
  local extension = vim.fn.expand("%:e")
  local icon, icon_hl = devicons.get_icon(filename, extension, { default = true })
  return { icon = icon or "", hl = icon_hl or "StatusLine" }
end

function git_branch()
  local gitsigns = vim.b.gitsigns_status_dict
  if gitsigns and gitsigns.head and gitsigns.head ~= "" then
    return "  " .. gitsigns.head .. " "
  end
  return ""
end

function git_added()
  local gitsigns = vim.b.gitsigns_status_dict
  if gitsigns and (gitsigns.added or 0) > 0 then
    return "  " .. gitsigns.added .. " "
  end
  return ""
end

function git_changed()
  local gitsigns = vim.b.gitsigns_status_dict
  if gitsigns and (gitsigns.changed or 0) > 0 then
    return "  " .. gitsigns.changed .. " "
  end
  return ""
end

function git_removed()
  local gitsigns = vim.b.gitsigns_status_dict
  if gitsigns and (gitsigns.removed or 0) > 0 then
    return "  " .. gitsigns.removed .. " "
  end
  return ""
end

function diagnostic_errors()
  local count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  if count > 0 then
    return "  " .. count .. " "
  end
  return ""
end

function diagnostic_warnings()
  local count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  if count > 0 then
    return "  " .. count .. " "
  end
  return ""
end

function diagnostic_hints()
  local count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
  if count > 0 then
    return "  " .. count .. " "
  end
  return ""
end

function toggle_copilot()
  if vim.fn.exists(":Copilot") ~= 2 then
    return
  end

  local ok, enabled = pcall(vim.fn["copilot#Enabled"])
  if ok and enabled == 1 then
    vim.cmd("Copilot disable")
    vim.notify("Copilot OFF")
  else
    vim.cmd("Copilot enable")
    vim.notify("Copilot ON")
  end

  vim.cmd("redrawstatus")
end

function copilot_status()
  if vim.fn.exists(":Copilot") == 2 then
    local ok, enabled = pcall(vim.fn["copilot#Enabled"])
    if ok then
      return enabled == 1 and "  on" or "  off"
    end
  end
  return ""
end

vim.opt.laststatus = 3
vim.opt.showmode = false

vim.opt.statusline = table.concat({
  "%#StatusLineMode#",
  "  %{v:lua.mode_name()} ",
  "%#StatusLine#",

  " %f ",

  "%#StatusLineGit#",
  "%{v:lua.git_branch()}",
  "%#StatusLine#",

  "%@v:lua.toggle_copilot@",
  " %{v:lua.copilot_status()} ",
  "%X",

  "%=",

  "%#DiffAdd#",
  "%{v:lua.diagnostic_hints()}",
  "%#StatusLine#",

  "%#DiffChange#",
  "%{v:lua.diagnostic_warnings()}",
  "%#StatusLine#",

  "%#DiffDelete#",
  "%{v:lua.diagnostic_errors()}",
  "%#StatusLine#",

  " ",

  "%#DiffAdd#",
  "%{v:lua.git_added()}",

  "%#DiffChange#",
  "%{v:lua.git_changed()}",

  "%#DiffDelete#",
  "%{v:lua.git_removed()}",
  "%#StatusLine#",

  " %l:%c ",
  " %p%% ",

  " %#" .. filetype_icon().hl .. "#",
  filetype_icon().icon .. "  ",
  "%#StatusLine#",
})
