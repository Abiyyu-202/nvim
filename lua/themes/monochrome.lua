local M = {}

M.colors = {
  bg = "#000000",
  fg = "#ffffff",
  gray = "#aaaaaa",
  light = "#dddddd",
  dark = "#333333",
}

function M.setup()
  local c = M.colors

  vim.api.nvim_set_hl(0, "Normal", { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "Comment", { fg = c.gray, italic = true })
  vim.api.nvim_set_hl(0, "LineNr", { fg = c.dark })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.light })
  vim.api.nvim_set_hl(0, "Visual", { bg = c.dark })
  vim.api.nvim_set_hl(0, "String", { fg = c.light })
  vim.api.nvim_set_hl(0, "Function", { fg = c.fg, bold = true })
  vim.api.nvim_set_hl(0, "Keyword", { fg = c.gray })
end

return M
