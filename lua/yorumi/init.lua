local M = {}

---@class YorumiConfig
M.config = {
  undercurl = true,
  dimInactive = false,
  theme = "abyss",
}

---@param theme? string
function M.load(theme)
  local config = M.config
  require("yorumi.highlights").apply(config)
end

M.load()

return M
