local M = {}

---@param config YorumiConfig
---@param theme YorumiTheme
function M.setup(config, theme)
  return {
    -- ScrollbarHandle = {},
    -- ScrollbarCursorHandle = {},
    -- ScrollbarCursor = {},
    -- ScrollbarSearchHandle = {},
    -- ScrollbarSearch = {},
    -- ScrollbarErrorHandle = {},
    -- ScrollbarError = {},
    -- ScrollbarWarnHandle = {},
    -- ScrollbarWarn = {},
    -- ScrollbarInfoHandle = {},
    -- ScrollbarInfo = {},
    -- ScrollbarHintHandle = {},
    -- ScrollbarHint = {},
    -- ScrollbarMiscHandle = {},
    -- ScrollbarMisc = {},
    ScrollbarGitAdd = { bg = theme.diff.add, fg = theme.vcs.added },
    -- ScrollbarGitAddHandle = {},
    -- ScrollbarGitChange = {},
    -- ScrollbarGitChangeHandle = {},
    -- ScrollbarGitDelete = {},
    -- ScrollbarGitDeleteHandle = {},
  }

end

return M
