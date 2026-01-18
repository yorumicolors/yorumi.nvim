local M = {}

---@param config? YorumiConfig
---@param theme? YorumiTheme
function M.setup(config, theme)
  return {
    -- *Comment	any comment
    Comment = { fg = "NONE" },

    -- *Constant	any constant
    Constant = { fg = theme.syn.constant },
    --  String		a string constant: "this is a string"
    String = { fg = theme.syn.string },
    --  Character	a character constant: 'c', '\n'
    Character = { fg = theme.syn.string },
    --  Number		a number constant: 234, 0xff
    Number = { fg = theme.syn.number },
    --  Boolean	a boolean constant: TRUE, false
    Boolean = { fg = theme.syn.constant, bold = true },
    --  Float		a floating point constant: 2.3e10
    Float = { link = "Number" },

    -- *Identifier	any variable name
    Identifier = { fg = theme.syn.identifier },
    --  Function	function name (also: methods for classes)
    Function = { fg = theme.syn.fun },

    -- *Statement	any statement
    Statement = { fg = theme.syn.statement },
    --  Conditional	if, then, else, endif, switch, etc.
    --  Repeat		for, do, while, etc.
    --  Label		case, default, etc.
    --  Operator	"sizeof", "+", "*", etc.
    Operator = { fg = theme.syn.identifier },
    --  Keyword	any other keyword
    Keyword = { fg = theme.syn.keyword },
    --  Exception	try, catch, throw
    Exception = { fg = theme.syn.special2 },

    -- *PreProc	generic Preprocessor
    PreProc = { fg = theme.syn.keyword },
    --  Include	preprocessor #include
    Define = { fg = theme.syn.special2 },
    Macro = { fg = theme.syn.special2 },
    --  PreCondit	preprocessor #if, #else, #endif, etc.

    -- *Type		int, long, char, etc.
    Type = { fg = theme.syn.type },
    --  StorageClass	static, register, volatile, etc.
    --  Structure	struct, union, enum, etc.
    --  Typedef	A typedef

    -- *Special	any special symbol
    Special = { fg = theme.syn.fun },
    --  SpecialChar	special character in a constant
    --  Tag		you can use CTRL-] on this
    --  Delimiter	character that needs attention
    Delimiter = { fg = theme.ui.fg_dim },
    --  SpecialComment	special things inside a comment
    --  Debug		debugging statements

    -- *Underlined	text that stands out, HTML links
    Underlined = { fg = theme.diag.info, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    -- *Ignore		left blank, hidden  |hl-Ignore|
    Ignore = { link = "NonText" },

    -- *Error		any erroneous construct
    Error = { fg = theme.syn.special2 },

    -- *Todo		anything that needs extra attention; mostly the keywords TODO FIXME WARNING and XXX
    Todo = { fg = theme.vcs.changed, bg = theme.diff.change, bold = true },

    qfLineNr = { link = "LineNr" },
    qfFileName = { link = "Directory" },

    -- htmlH1 = {},
    -- htmlH2 = {},

    -- mkdHeading = {},
    -- mkdCode = {},
    -- mkdCodeDelimiter = {},
    -- mkdCodeStart = {},
    -- mkdCodeEnd = {},
    -- mkdLink = {},

    -- markdownHeadingDelimiter = {},
    markdownCode = { fg = theme.syn.string },
    markdownCodeBlock = { fg = theme.syn.string },
    markdownEscape = { fg = "NONE" },
  }
end

return M
