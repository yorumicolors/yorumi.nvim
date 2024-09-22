local m = {}

---@param config yorumiconfig
function m.setup(config)
  local palette = require("yorumi.colors")

  return {
    minimapCursor = { bg = palette.yoru2, fg = palette.tsuki4 },
    minimapRange = { bg = palette.yoru4 },
    minimapDiffRemoved = { fg = palette.sangoRed },
    minimapDiffAdded = { fg = palette.sangoGreen },
    minimapDiffLine = { fg = palette.sangoViolet },
    minimapCursorDiffRemoved = { bg = palette.kuroiRed },
    minimapCursorDiffAdded = { bg = palette.kuroiGreen },
    minimapCursorDiffLine = { bg = palette.kuroiViolet },
    minimapRangeDiffRemoved = { bg = palette.kuroiRed },
    minimapRangeDiffAdded = { bg = palette.kuroiGreen },
    minimapRangeDiffLine = { bg = palette.kuroiViolet },
  }
end

return m
