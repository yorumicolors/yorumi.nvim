local M = {}

---@param config YorumiConfig
---@param theme YorumiTheme
function M.setup(config, theme)
  return {
    BlinkCmpDoc = { bg = theme.ui.bg, fg = theme.ui.fg_dim },
    BlinkCmpDocBorder = { bg = theme.ui.bg, fg = theme.ui.fg },

    BlinkCmpKindMethod = { link = "@function.method" },
    BlinkCmpKindFunction = { link = "Function" },
    BlinkCmpKindConstructor = { link = "@constructor" },
    BlinkCmpKindField = { link = "@variable.member" },
    BlinkCmpKindClass = { link = "Type" },
    BlinkCmpKindInterface = { link = "Type" },
    BlinkCmpKindModule = { link = "@module" },
    BlinkCmpKindProperty = { link = "@property" },
    BlinkCmpKindUnit = { link = "Number" },
    BlinkCmpKindValue = { link = "String" },
    BlinkCmpKindEnum = { link = "Type" },
    BlinkCmpKindKeyword = { link = "Keyword" },
    BlinkCmpKindSnippet = { link = "Special" },
    BlinkCmpKindColor = { link = "Special" },
    BlinkCmpKindFile = { link = "Directory" },
    BlinkCmpKindReference = { link = "Special" },
    BlinkCmpKindFolder = { link = "Directory" },
    BlinkCmpKindEnumMember = { link = "Constant" },
    BlinkCmpKindConstant = { link = "Constant" },
    BlinkCmpKindStruct = { link = "Type" },
    BlinkCmpKindEvent = { link = "Type" },
    BlinkCmpKindOperator = { link = "Operator" },
    BlinkCmpKindTypeParameter = { link = "Type" },
  }

end

return M

