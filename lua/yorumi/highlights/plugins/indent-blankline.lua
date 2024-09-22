local M = {}

---@param config YorumiConfig
function M.setup(config)
  local palette = require("yorumi.colors")

  return {
    IblIndent       = { bg = "NONE", fg = palette.yoru3 },
    IblIndentScope  = { bg = "NONE", fg = palette.kuroiGray },
    IblWhitespace   = { bg = palette.yoru1 }
  }
end

return M
