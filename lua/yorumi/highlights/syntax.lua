local M = {}

---@param config? YorumiConfig
function M.setup(config)
  local palette = require("yorumi.colors")
  config = config or require("kanagawa").config

  return {
    -- *Comment	any comment
    Comment = { fg = palette.tsuki1 },

    -- *Constant	any constant
    Constant = { fg = palette.sangoOrange },
    --  String		a string constant: "this is a string"
    String = { fg = palette.kairoGreen },
    --  Character	a character constant: 'c', '\n'
    Character = { fg = palette.sangoGreen },
    --  Number		a number constant: 234, 0xff
    Number = { fg = palette.sangoMagenta },
    --  Boolean	a boolean constant: TRUE, false
    Boolean = { fg = palette.sangoOrange, bold = true },
    --  Float		a floating point constant: 2.3e10
    Float = { link = "Number" },

    -- *Identifier	any variable name
    Identifier = { fg = palette.sangoYellow },
    --  Function	function name (also: methods for classes)
    Function = { fg = palette.sangoBlue },

    -- *Statement	any statement
    Statement = { fg = palette.kairoMagenta },
    --  Conditional	if, then, else, endif, switch, etc.
    --  Repeat		for, do, while, etc.
    --  Label		case, default, etc.
    --  Operator	"sizeof", "+", "*", etc.
    Operator = { fg = palette.sangoYellow },
    --  Keyword	any other keyword
    Keyword = { fg = palette.sangoViolet },
    --  Exception	try, catch, throw
    Exception = { fg = palette.sangoRed },

    -- *PreProc	generic Preprocessor
    PreProc = { fg = palette.sangoRed },
    --  Include	preprocessor #include
    --  Define		preprocessor #define
    --  Macro		same as Define
    --  PreCondit	preprocessor #if, #else, #endif, etc.

    -- *Type		int, long, char, etc.
    Type = { fg = palette.sangoCyan },
    --  StorageClass	static, register, volatile, etc.
    --  Structure	struct, union, enum, etc.
    --  Typedef	A typedef

    -- *Special	any special symbol
    Special = { fg = palette.sangoBlue },
    --  SpecialChar	special character in a constant
    --  Tag		you can use CTRL-] on this
    --  Delimiter	character that needs attention
    Delimiter = { fg = palette.tsuki1 },
    --  SpecialComment	special things inside a comment
    --  Debug		debugging statements

    -- *Underlined	text that stands out, HTML links
    Underlined = { fg = palette.umiCyan, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    -- *Ignore		left blank, hidden  |hl-Ignore|
    Ignore = { link = "NonText" },

    -- *Error		any erroneous construct
    Error = { fg = palette.sangoRed },

    -- *Todo		anything that needs extra attention; mostly the keywords TODO FIXME WARNING and XXX
    Todo = { fg = palette.yoru0, bg = palette.kuroiYellow, bold = true },

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
    markdownCode = { fg = palette.sangoGreen },
    markdownCodeBlock = { fg = palette.sangoGreen },
    markdownEscape = { fg = "NONE" },
    -- markdownH1 = {},
    -- markdownH2 = {},
    -- markdownLinkText = {},
    }
  end

  return M
