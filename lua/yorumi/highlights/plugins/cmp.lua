local M = {}

---@param config YorumiConfig
function M.setup(config)
  local palette = require("yorumi.colors")

  return {
    CmpDocumentation = { bg = palette.yoru0, fg = palette.tsuki2 },
    CmpDocumentationBorder = { bg = palette.yoru0, fg = palette.tsuki3 },

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

