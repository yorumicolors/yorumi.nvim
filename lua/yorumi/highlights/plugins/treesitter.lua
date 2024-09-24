local M = {}

---@param config YorumiConfig
function M.setup(config)
  local palette = require("yorumi.colors")
  return {
    -- @variable                       various variable names
    ["@variable"] = { fg = palette.tsuki3 },
    -- @variable.builtin (Special)     built-in variable names (e.g. `this`, `self`)
    ["@variable.builtin"] = { fg = palette.sangoRed},
    -- @variable.parameter             parameters of a function
    ["@variable.parameter"] = { fg = palette.tsuki2 },
    -- @variable.parameter.builtin     special parameters (e.g. `_`, `it`)
    -- @variable.member                object and struct fields
    ["@variable.member"] = { fg = palette.sangoYellow },
    --
    -- @constant (Constant)              constant identifiers
    -- @constant.builtin       built-in constant values
    -- @constant.macro         constants defined by the preprocessor
    --
    -- @module (Structure)      modules or namespaces
    -- @module.builtin         built-in modules or namespaces
    -- @label                  `GOTO` and other labels (e.g. `label:` in C), including heredoc labels
    --
    -- @string                 string literals
    -- @string.documentation   string documenting code (e.g. Python docstrings)
    -- @string.regexp          regular expressions
    ["@string.regexp"] = { fg = palette.sangoRed },
    -- @string.escape          escape sequences
    ["@string.escape"] = { fg = palette.sangoRed, bold = true },
    -- @string.special         other special strings (e.g. dates)
    -- @string.special.symbol  symbols or atoms
    ["@string.special.symbol"] = { fg = palette.sangoYellow },
    -- @string.special.path    filenames
    -- @string.special.url (Underlined)     URIs (e.g. hyperlinks)
    ["@string.special.url"] = { fg = palette.sangoCyan, underline = true },
    -- @character              character literals
    -- @character.special      special characters (e.g. wildcards)
    --
    -- @boolean                boolean literals
    -- @number                 numeric literals
    -- @number.float           floating-point number literals
    --
    -- @type                   type or class definitions and annotations
    -- @type.builtin           built-in types
    -- @type.definition        identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
    --
    -- @attribute              attribute annotations (e.g. Python decorators, Rust lifetimes)
    ["@attribute"] = { link = "Constant" },
    -- @attribute.builtin      builtin annotations (e.g. `@property` in Python)
    -- @property               the key in key/value pairs
    --
    -- @function               function definitions
    -- @function.builtin       built-in functions
    -- @function.call          function calls
    -- @function.macro         preprocessor macros
    --
    -- @function.method        method definitions
    -- @function.method.call   method calls
    --
    -- @constructor            constructor calls and definitions
    ["@constructor"] = { fg = palette.sangoBlue },
    ["@constructor.lua"] = { fg = palette.kairoMagenta },
    -- @operator               symbolic operators (e.g. `+`, `*`)
    ["@operator"] = { link = "Operator" },
    --
    -- @keyword                keywords not fitting into specific categories
    -- @keyword.coroutine      keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    -- @keyword.function       keywords that define a function (e.g. `func` in Go, `def` in Python)
    -- @keyword.operator       operators that are English words (e.g. `and`, `or`)
    ["@keyword.operator"] = { fg = palette.sangoYellow, bold = true },
    -- @keyword.import         keywords for including modules (e.g. `import`, `from` in Python)
    ["@keyword.import"] = { fg = palette.sangoViolet },
    -- @keyword.type           keywords defining composite types (e.g. `struct`, `enum`)
    -- @keyword.modifier       keywords defining type modifiers (e.g. `const`, `static`, `public`)
    -- @keyword.repeat         keywords related to loops (e.g. `for`, `while`)
    -- @keyword.return         keywords like `return` and `yield`
    ["@keyword.return"] = { fg = palette.sangoRed },
    -- @keyword.debug          keywords related to debugging
    -- @keyword.exception      keywords related to exceptions (e.g. `throw`, `catch`)
    ["@keyword.exception"] = { fg = palette.kairoRed },

    ["@keyword.luap"] = { link = "@string.regex" },
    --
    -- @keyword.conditional         keywords related to conditionals (e.g. `if`, `else`)
    -- @keyword.conditional.ternary ternary operator (e.g. `?`, `:`)
    --
    -- @keyword.directive           various preprocessor directives and shebangs
    -- @keyword.directive.define    preprocessor definition directives
    --
    -- @punctuation.delimiter  delimiters (e.g. `;`, `.`, `,`)
    ["@punctuation.delimiter"] = { fg = palette.tsuki2 },
    -- @punctuation.bracket    brackets (e.g. `()`, `{}`, `[]`)
    ["@punctuation.bracket"] = { fg = palette.tsuki2 },
    -- @punctuation.special    special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special"] = { fg = palette.sangoCyan },
    --
    -- @comment                line and block comments
    -- @comment.documentation  comments documenting code
    --
    -- @comment.error          error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
    ["@comment.error"] = { fg = palette.tsuki3, bg = palette.kuroiRed, bold = true },
    -- @comment.warning        warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
    ["@comment.warning"] = { fg = palette.tsuki3, bg = palette.kuroiYellow, bold = true },
    -- @comment.todo           todo-type comments (e.g. `TODO`, `WIP`)
    -- @comment.note           note-type comments (e.g. `NOTE`, `INFO`, `XXX`)
    ["@comment.note"] = { bg = palette.yoru0, fg = palette.kairoYellow, bold = true },
    --
    -- @markup.strong          bold text
    ["@markup.strong"] = { bold = true },
    -- @markup.italic          italic text
    ["@markup.italic"] = { italic = true },
    -- @markup.strikethrough   struck-through text
    ["@markup.strikethrough"] = { strikethrough = true },
    -- @markup.underline       underlined text (only for literal underline markup!)
    ["@markup.underline"] = { underline = true },
    --
    -- @markup.heading         headings, titles (including markers)
    ["@markup.heading"] = { link = "Function" },
    -- @markup.heading.1       top-level heading
    -- @markup.heading.2       section heading
    -- @markup.heading.3       subsection heading
    -- @markup.heading.4       and so on
    -- @markup.heading.5       and so forth
    -- @markup.heading.6       six levels ought to be enough for anybody
    --
    -- @markup.quote           block quotes
    ["@markup.quote"] = { link = "@variable.parameter" },
    -- @markup.math            math environments (e.g. `$ ... $` in LaTeX)
    ["@markup.math"] = { link = "Constant" },
    -- @markup.environment     environments (e.g. in LaTeX)
    ["@markup.environment"] = { link = "Keyword" },
    --
    -- @markup.link            text references, footnotes, citations, etc.
    -- @markup.link.label      link, reference descriptions
    -- @markup.link.url        URL-style links
    ["@markup.link.url"] = { link = "@string.special.url" },
    -- @markup.raw             literal or verbatim text (e.g. inline code)
    ["@markup.raw"] = { link = "String" },
    -- @markup.raw.block       literal or verbatim text as a stand-alone block
    --
    -- @markup.list            list markers
    -- @markup.list.checked    checked todo-style list markers
    -- @markup.list.unchecked  unchecked todo-style list markers
    --
    -- @diff.plus              added text (for diff files)
    ["@diff.plus"] = { fg = palette.sangoGreen },
    -- @diff.minus             deleted text (for diff files)
    ["@diff.minus"] = { fg = palette.sangoRed },
    -- @diff.delta             changed text (for diff files)
    ["@diff.delta"] = { fg = palette.sangoYellow },
    --
    -- @tag                    XML-style tag names (e.g. in XML, HTML, etc.)
    -- @tag.builtin            XML-style tag names (e.g. HTML5 tags)
    -- @tag.attribute          XML-style tag attributes
    ["@tag.attribute"] = { fg = palette.sangoOrange },
    -- @tag.delimiter          XML-style tag delimiters
    ["@tag.delimiter"] = { fg = palette.tsuki1 },
  }
  end

  return M
