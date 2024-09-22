local M = {}

---@param config YorumiConfig
function M.setup(config)
  local palette = require("yorumi.colors")

  return {
    -- NvimTreeNormal       = { link = "Normal" },
    -- NvimTreeNormalFloat  = { link = "NormalFloat" },
    -- NvimTreeNormalNC     = { link = "NormalFloat" },
    -- NvimTreeLineNr       = { link = "LineNr" },
    -- NvimTreeWinSeparator = { link = "WinSeparator" },
    -- NvimTreeEndOfBuffer  = { link = "EndOfBuffer" },
    -- NvimTreePopup        = { link = "Normal" },
    -- NvimTreeSignColumn   = { link = "NvimTreeNormal" },
    -- NvimTreeCursorColumn = { link = "CursorColumn" },
    -- NvimTreeCursorLine   = { link = "CursorLine" },
    -- NvimTreeCursorLineNr = { link = "CursorLineNr" },
    NvimTreeStatusLine   = { bg = palette.yoru0 },
    -- NvimTreeStatusLineNC = { link = "StatusLineNC" },
    -- NvimTreeExecFile     = { link = "SpellCap" },
    -- NvimTreeImageFile    = { link = "SpellCap" },
    NvimTreeSpecialFile  = { fg = palette.kairoViolet },
    -- NvimTreeSymlink      = { link = "SpellCap" },
    -- NvimTreeFileIcon     = { link = "NvimTreeNormal" },
    -- NvimTreeSymlink      = { link = "NvimTreeNormal" },
    NvimTreeRootFolder  = { fg = palette.kairoBlue, bg = palette.yoru3 },
    NvimTreeFolderName  = { fg = palette.kairoBlue },
    -- NvimTreeOpenedFolderName   = { fg = palette.kairoBlue },
    -- NvimTreeClosedFolderIcon   = { link = "NvimTreeFolderIcon" },
    -- NvimTreeFolderArrowClosed  = { link = "NvimTreeIndentMarker" },
    -- NvimTreeFolderArrowOpen    = { link = "NvimTreeIndentMarker" },
    -- NvimTreeIndentMarker       = { link = "NvimTreeFileIcon" },
    -- NvimTreeWindowPicker       = {  },
    -- NvimTreeLiveFilterPrefix   = { link = "PreProc" },
    -- NvimTreeLiveFilterValue    = { link = "ModeMsg" },
    -- NvimTreeCopiedHL           = { link = "SpellRare" },
    -- NvimTreeCutHL              = { link = "SpellBad" },
    -- NvimTreeBookmarkIcon       = { link = "NvimTreeFolderIcon" },
    -- NvimTreeBookmarkHL         = { link = "SpellHL" },
    -- NvimTreeModifiedIcon       = { link = "Type" },
    -- NvimTreeModifiedFileHL = { link = "NvimTreeModifiedIcon" },
    -- NvimTreeModifiedFolderHL = { link = "NvimTreeModifiedIcon" },

    -- NvimTreeModifiedIcon = { conceal = true },
    -- NvimTreeModifiedFileHL = { link = "NvimTreeHiddenIcon" },
    -- NvimTreeModifiedFolderHL = { link = "NvimTreeHiddenFileHL" },

    -- NvimTreeHiddenDisplay = { conceal = true },

    -- NvimTreeOpenedHL = { link = "Special" },

    NvimTreeGitDeletedIcon = { fg = palette.kuroiRed },
    -- NvimTreeGitDirtyIcon = { link = "Statement" },
    -- NvimTreeGitIgnoredIcon = { link = "Comment" },
    -- NvimTreeGitMergeIcon = { link = "Constant" },
    NvimTreeGitNewIcon  = { fg = palette.umiGreen },
    -- NvimTreeGitRenamedIcon = { link = "PreProc" },
    -- NvimTreeGitStagedIcon = { link = "Constant" },

    -- NvimTreeGitFileDeletedHL = { link = "NvimTreeGitDeletedIcon" },
    -- NvimTreeGitFileDirtyHL = { link = "NvimTreeGitDirtyIcon" },
    -- NvimTreeGitFileIgnoredHL = { link = "NvimTreeGitIgnoredIcon" },
    -- NvimTreeGitFileMergeHL = { link = "NvimTreeGitMergeIcon" },
    -- NvimTreeGitFileNewHL = { link = "NvimTreeGitNewIcon" },
    -- NvimTreeGitFileRenamedHL = { link = "NvimTreeGitRenamedIcon" },
    -- NvimTreeGitFileStagedHL = { link = "NvimTreeGitStagedIcon" },

    -- NvimTreeGitFolderDeletedHL = { link = "NvimTreeGitFileDeletedHL" },
    -- NvimTreeGitFolderDirtyHL = { link = "NvimTreeGitFileDirtyHL" },
    -- NvimTreeGitFolderIgnoredHL = { link = "NvimTreeGitFileIgnoredHL" },
    -- NvimTreeGitFolderMergeHL = { link = "NvimTreeGitFileMergeHL" },
    -- NvimTreeGitFolderNewHL = { link = "NvimTreeGitFileNewHL" },
    -- NvimTreeGitFolderRenamedHL = { link = "NvimTreeGitFileRenamedHL" },
    -- NvimTreeGitFolderStagedHL = { link = "NvimTreeGitFileStagedHL" },

    -- NvimTreeDiagnosticErrorIcon = { link = "DiagnosticError" },
    -- NvimTreeDiagnosticWarnIcon = { link = "DiagnosticWarn" },
    -- NvimTreeDiagnosticInfoIcon = { link = "DiagnosticInfo" },
    -- NvimTreeDiagnosticHintIcon = { link = "DiagnosticHint" },

    -- NvimTreeDiagnosticErrorFileHL = { link = "DiagnosticUnderlineError" },
    -- NvimTreeDiagnosticWarnFileHL = { link = "DiagnosticUnderlineWarn" },
    -- NvimTreeDiagnosticInfoFileHL = { link = "DiagnosticUnderlineInfo" },
    -- NvimTreeDiagnosticHintFileHL = { link = "DiagnosticUnderlineHint" },

    -- NvimTreeDiagnosticErrorFolderHL = { link = "NvimTreeDiagnosticErrorFileHL" },
    -- NvimTreeDiagnosticWarnFolderHL = { link = "NvimTreeDiagnosticWarnFileHL" },
    -- NvimTreeDiagnosticInfoFolderHL = { link = "NvimTreeDiagnosticInfoFileHL" },
    -- NvimTreeDiagnosticHintFolderHL = { link = "NvimTreeDiagnosticHintFileHL" },
  }
end

return M
