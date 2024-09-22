local M = {}

---@param config YorumiConfig
function M.setup(config)
  local palette = require("yorumi.colors")
  return {
    -- Used for the text of 'add' signs.
    GitSignsAdd = { fg = palette.umiGreen },

    -- Used for the text of 'change' signs.
    GitSignsChange = { fg = palette.kairoYellow },

    -- Used for the text of 'delete' signs.
    GitSignsDelete = { fg = palette.kairoRed },

    -- Used for the text of 'changedelete' signs.
    GitSignsChangedelete = { fg = palette.sangoViolet },

    -- Used for the text of 'topdelete' signs.
    GitSignsTopdelete = { fg = palette.kairoRed },

    -- Used for the text of 'untracked' signs.
    GitSignsUntracked = { fg = palette.umiCyan },

    -- Used for number column (when `config.numhl == true`) of 'add' signs.
    GitSignsAddNr = { fg = palette.kairoGreen },

    -- Used for number column (when `config.numhl == true`) of 'change' signs.
    GitSignsChangeNr = { fg = palette.kairoYellow },

    -- Used for number column (when `config.numhl == true`) of 'delete' signs.
    GitSignsDeleteNr = { fg = palette.kairoRed },

    -- Used for number column (when `config.numhl == true`) of 'changedelete' signs.
    GitSignsChangedeleteNr = { fg = palette.sangoViolet },

    -- Used for number column (when `config.numhl == true`) of 'topdelete' signs.
    GitSignsTopdeleteNr = { fg = palette.kairoRed },

    -- Used for number column (when `config.numhl == true`) of 'untracked' signs.
    GitSignsUntrackedNr = { fg = palette.umiCyan },

    -- Used for buffer line (when `config.linehl == true`) of 'add' signs.
    GitSignsAddLn = { fg = palette.umiGreen },

    -- Used for buffer line (when `config.linehl == true`) of 'change' signs.
    GitSignsChangeLn = { fg = palette.kairoYellow },

    -- Used for buffer line (when `config.linehl == true`) of 'changedelete' signs.
    GitSignsChangedeleteLn = { fg = palette.sangoViolet },

    -- Used for buffer line (when `config.linehl == true`) of 'untracked' signs.
    GitSignsUntrackedLn = { fg = palette.umiCyan },

    -- Used for the text of 'add' signs when the cursor is on the same line as the sign.
    GitSignsAddCul = { fg = palette.umiGreen },

    -- Used for the text of 'change' signs when the cursor is on the same line as the sign.
    GitSignsChangeCul = { fg = palette.kairoYellow },

    -- Used for the text of 'delete' signs when the cursor is on the same line as the sign.
    GitSignsDeleteCul = { fg = palette.kairoRed },

    -- Used for the text of 'changedelete' signs when the cursor is on the same line as the sign.
    GitSignsChangedeleteCul = { fg = palette.sangoViolet },

    -- Used for the text of 'topdelete' signs when the cursor is on the same line as the sign.
    GitSignsTopdeleteCul = { fg = palette.kairoRed },

    -- Used for the text of 'untracked' signs when the cursor is on the same line as the sign.
    GitSignsUntrackedCul = { fg = palette.umiCyan },

    -- Used for added lines in previews.
    GitSignsAddPreview = { fg = palette.umiGreen },

    -- Used for deleted lines in previews.
    GitSignsDeletePreview = { fg = palette.kairoRed },

    -- Used for current line blame.
    GitSignsCurrentLineBlame = { fg = vim.wo.cursorline and palette.tsuki1 or palette.tsuki0 },

    -- Used for added word diff regions in inline previews.
    GitSignsAddInline = { fg = palette.umiGreen },

    -- Used for deleted word diff regions in inline previews.
    GitSignsDeleteInline = { fg = palette.kairoRed },

    -- Used for changed word diff regions in inline previews.
    GitSignsChangeInline = { fg = palette.kairoYellow },

    -- Used for added word diff regions when `config.word_diff == true`.
    GitSignsAddLnInline = { fg = palette.umiGreen },

    -- Used for changed word diff regions when `config.word_diff == true`.
    GitSignsChangeLnInline = { fg = palette.kairoYellow },

    -- Used for deleted word diff regions when `config.word_diff == true`.
    GitSignsDeleteLnInline = { fg = palette.kairoRed },

    -- Used for deleted lines shown by inline `preview_hunk_inline()` or `show_deleted()`.
    GitSignsDeleteVirtLn = { fg = palette.kairoRed },

    -- Used for word diff regions in lines shown by inline `preview_hunk_inline()` or `show_deleted()`.
    GitSignsDeleteVirtLnInLine = { fg = palette.kairoRed },

    -- Used for line numbers in inline hunks previews.
    GitSignsVirtLnum = { fg = palette.kairoRed }
  }
end

return M

