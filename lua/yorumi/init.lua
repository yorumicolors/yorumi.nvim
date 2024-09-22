local M = {}

---@class YorumiConfig
M.config = {
  undercurl = true,
  commentStyle = { italic = false },
  functionStyle = {},
  keywordStyle = {},
  statementStyle = {},
  typeStyle = {},
  dimInactive = false,
  terminalColors = false,
  ---@type { dark: string, light: string}
  background = { dark = "abyss", light = "mist" },  --- light, mist theme coming soon
  theme = "abyss",
}

---@param theme? string
function M.load(theme)
  local config = M.config
  theme = theme or M.config.background[vim.o.background] or M.config.theme
  M._CURRENT_THEME = theme

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = "yorumi"
  vim.o.termguicolors = true

  require("yorumi.highlights").apply(config)
end

return M
