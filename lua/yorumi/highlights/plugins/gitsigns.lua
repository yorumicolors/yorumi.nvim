local M = {}

---@param config YorumiConfig
---@param theme YorumiTheme
function M.setup(config, theme)
  return {
    -- Used for the text of 'add' signs.
    GitSignsAdd = { fg = theme.vcs.added },

    -- Used for the text of 'change' signs.
    GitSignsChange = { fg = theme.vcs.changed },

    -- Used for the text of 'delete' signs.
    GitSignsDelete = { fg = theme.diag.error },

    -- Used for the text of 'changedelete' signs.
    GitSignsChangedelete = { fg = theme.syn.keyword },

    -- Used for the text of 'topdelete' signs.
    GitSignsTopdelete = { fg = theme.diag.error },

    -- Used for the text of 'untracked' signs.
    GitSignsUntracked = { fg = theme.diag.info },

    -- Used for number column (when `config.numhl == true`) of 'add' signs.
    GitSignsAddNr = { fg = theme.vcs.added },

    -- Used for number column (when `config.numhl == true`) of 'change' signs.
    GitSignsChangeNr = { fg = theme.vcs.changed },

    -- Used for number column (when `config.numhl == true`) of 'delete' signs.
    GitSignsDeleteNr = { fg = theme.diag.error },

    -- Used for number column (when `config.numhl == true`) of 'changedelete' signs.
    GitSignsChangedeleteNr = { fg = theme.syn.keyword },

    -- Used for number column (when `config.numhl == true`) of 'topdelete' signs.
    GitSignsTopdeleteNr = { fg = theme.diag.error },

    -- Used for number column (when `config.numhl == true`) of 'untracked' signs.
    GitSignsUntrackedNr = { fg = theme.diag.info },

    -- Used for buffer line (when `config.linehl == true`) of 'add' signs.
    GitSignsAddLn = { fg = theme.vcs.added },

    -- Used for buffer line (when `config.linehl == true`) of 'change' signs.
    GitSignsChangeLn = { fg = theme.vcs.changed },

    -- Used for buffer line (when `config.linehl == true`) of 'changedelete' signs.
    GitSignsChangedeleteLn = { fg = theme.syn.keyword },

    -- Used for buffer line (when `config.linehl == true`) of 'untracked' signs.
    GitSignsUntrackedLn = { fg = theme.diag.info },

    -- Used when the cursor is on the same line as the sign.
    GitSignsAddCul = { fg = theme.vcs.added },

    -- Used for the text of 'change' signs when the cursor is on the same line as the sign.
    GitSignsChangeCul = { fg = theme.vcs.changed },

    -- Used for the text of 'delete' signs when the cursor is on the same line as the sign.
    GitSignsDeleteCul = { fg = theme.diag.error },

    -- Used for the text of 'changedelete' signs when the cursor is on the same line as the sign.
    GitSignsChangedeleteCul = { fg = theme.syn.keyword },

    -- Used for the text of 'topdelete' signs when the cursor is on the same line as the sign.
    GitSignsTopdeleteCul = { fg = theme.diag.error },

    -- Used for the text of 'untracked' signs when the cursor is on the same line as the sign.
    GitSignsUntrackedCul = { fg = theme.diag.info },

    -- Used for added lines in previews.
    GitSignsAddPreview = { fg = theme.vcs.added },

    -- Used for deleted lines in previews.
    GitSignsDeletePreview = { fg = theme.diag.error },

    -- Used for current line blame.
    GitSignsCurrentLineBlame = { fg = vim.wo.cursorline and theme.ui.fg_dim or theme.syn.comment },

    -- Used for added word diff regions in inline previews.
    GitSignsAddInline = { fg = theme.vcs.added },

    -- Used for deleted word diff regions in inline previews.
    GitSignsDeleteInline = { fg = theme.diag.error },

    -- Used for changed word diff regions in inline previews.
    GitSignsChangeInline = { fg = theme.vcs.changed },

    -- Used for added word diff regions when `config.word_diff == true`.
    GitSignsAddLnInline = { fg = theme.vcs.added },

    -- Used for changed word diff regions when `config.word_diff == true`.
    GitSignsChangeLnInline = { fg = theme.vcs.changed },

    -- Used for deleted word diff regions when `config.word_diff == true`.
    GitSignsDeleteLnInline = { fg = theme.diag.error },

    -- Used for deleted lines shown by inline `preview_hunk_inline()` or `show_deleted()`.
    GitSignsDeleteVirtLn = { fg = theme.diag.error },

    -- Used for word diff regions in lines shown by inline `preview_hunk_inline()` or `show_deleted()`.
    GitSignsDeleteVirtLnInLine = { fg = theme.diag.error },

    -- Used for line numbers in inline hunks previews.
    GitSignsVirtLnum = { fg = theme.diag.error }
  }
end

return M

