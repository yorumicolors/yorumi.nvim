local M = {}

---@param config? YorumiConfig
---@param theme? YorumiTheme
function M.apply(config, theme)
  config = config or require("yorumi").config
  theme = theme or require("yorumi.colors")(config.theme)

  local hl_files = {
    "editor", "lsp", "syntax",
    "plugins/nvim-tree", "plugins/indent-blankline", "plugins/gitsigns",
    "plugins/scrollbar", "plugins/cmp", "plugins/treesitter",
    "plugins/blink", "plugins/mason"
  }

  for _, highlight in ipairs(hl_files) do
    local highlights = require("yorumi.highlights." .. highlight)
    local tbl = highlights.setup(config, theme)
    for hl, spec in pairs(tbl) do
      vim.api.nvim_set_hl(0, hl, spec)
    end
  end

  if theme.overrides then
    for hl, spec in pairs(theme.overrides) do
      vim.api.nvim_set_hl(0, hl, spec)
    end
  end

  if config.highlightOverrides then
    for hl, spec in pairs(config.highlightOverrides) do
      vim.api.nvim_set_hl(0, hl, spec)
    end
  end
end

return M
