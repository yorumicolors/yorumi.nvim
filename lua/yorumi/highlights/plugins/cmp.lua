local M = {}

---@param config YorumiConfig
---@param theme YorumiTheme
function M.setup(config, theme)
  return {
    CmpDocumentation = { bg = theme.ui.pmenu.bg, fg = theme.ui.pmenu.fg },
    CmpDocumentationBorder = { bg = theme.ui.pmenu.bg, fg = theme.ui.float.fg_border },

    -- refer https://github.com/hrsh7th/nvim-cmp/discussions/1200
    -- add Normal:CmpNormal to winhighlight
    CmpNormal = { bg = theme.ui.pmenu.bg },
    CmpFloatBorder = { bg = theme.ui.pmenu.bg, fg = theme.ui.float.fg_border },
    CmpCursorLine = { link = "PmenuSel" },

    CmpItemKindMethod = { link = "@function.method" },
    CmpItemKindFunction = { link = "Function" },
    CmpItemKindConstructor = { link = "@constructor" },
    CmpItemKindField = { link = "@variable.member" },
    CmpItemKindClass = { link = "Type" },
    CmpItemKindInterface = { link = "Type" },
    CmpItemKindModule = { link = "@module" },
    CmpItemKindProperty = { link = "@property" },
    CmpItemKindUnit = { link = "Number" },
    CmpItemKindValue = { link = "String" },
    CmpItemKindEnum = { link = "Type" },
    CmpItemKindKeyword = { link = "Keyword" },
    CmpItemKindSnippet = { link = "Special" },
    CmpItemKindColor = { link = "Special" },
    CmpItemKindFile = { link = "Directory" },
    CmpItemKindReference = { link = "Special" },
    CmpItemKindFolder = { link = "Directory" },
    CmpItemKindEnumMember = { link = "Constant" },
    CmpItemKindConstant = { link = "Constant" },
    CmpItemKindStruct = { link = "Type" },
    CmpItemKindEvent = { link = "Type" },
    CmpItemKindOperator = { link = "Operator" },
    CmpItemKindTypeParameter = { link = "Type" },
    CmpItemKindCopilot = { link = "String" },
  }

end

return M

