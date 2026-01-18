local M = {}

---@param config YorumiConfig
---@param theme YorumiTheme
function M.setup(config, theme)
  return {
    IblIndent       = { bg = theme.ui.whitespace, fg = theme.ui.nontext },
    IblIndentScope  = { bg = theme.ui.whitespace, fg = theme.ui.bg_p2 },
    IblWhitespace   = { bg = theme.ui.whitespace }
  }
end

return M
