local M = {}

---@param config YorumiConfig
---@param theme YorumiTheme
function M.setup(config, theme)
  return {
    ArrowFileIndex = { bg = theme.ui.float.bg, fg = theme.ui.float.fg },
    ArrowCurrentFile = { fg = theme.ui.special }
  }

end

return M
