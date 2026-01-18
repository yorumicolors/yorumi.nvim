-- inspired by https://github.com/nvim-lualine/lualine.nvim/blob/master/examples/evil_lualine.lua 

local arrow_sl = require('arrow.statusline')
local lualine = require('lualine')
local theme = require("yorumi.colors")("abyss")

local checks = {
  empty_buffer = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  is_git_workspace = function()
    local handle = io.popen("git rev-parse --is-inside-work-tree 2> /dev/null")
    if not handle then
      print("couldn't execute git rev-parse")
      return false
    end
    local result = handle:read("*a")
    handle:close()

    return result:match("true") ~= nil
  end,
}

-- config here 
local cfg = {
  options = {
    component_separators = '',
    section_separators = '',

    theme = {
      normal = { c = { fg = theme.ui.fg, bg = theme.ui.bg_p2 }},
      inactive = { c = { fg = theme.ui.fg_dim, bg = theme.ui.bg }},
    },
  },

  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  }
}

local function get_os_logo()
  local os_patterns = {
    ['windows'] = '󰍲 ',
    ['linux'] = ' ',
    ['mac'] = ' ',
    ['darwin'] = ' ',
    ['^mingw'] = '󰍲 ',
    ['^cygwin'] = '󰍲 ',
    ['bsd$'] = ' ',
  }
  local sysname = string.lower(vim.loop.os_uname().sysname)
  for pattern, logo in pairs(os_patterns) do
    if string.match(sysname, pattern) then
      return logo
    end
  end
  return " "
end

local function insert_left(component)
  table.insert(cfg.sections.lualine_c, component)
end

local function insert_right(component)
  table.insert(cfg.sections.lualine_x, component)
end

-- active bar
insert_left {
  function()
    return '▉'
  end,
  color = { fg = theme.ui.fg_dim }, -- Sets highlighting of component
  padding = { left = 0, right = 0 }, -- We don't need space before this
}

-- logo
insert_left {
  function()
    return get_os_logo()
  end,
  color = function()
    local mode_color = {
      n = theme.ui.fg_dim,
      i = theme.syn.string,
      v = theme.syn.identifier,
      [' '] = theme.syn.fun,
      V = theme.vcs.changed,
      c = theme.syn.type,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end
}


insert_left {
  function()
    return arrow_sl.text_for_statusline_with_icons()
  end,
  cond = arrow_sl.is_on_arrow_file(),
  color = { fg = theme.ui.fg }
}

insert_left {
  'filename',
  cond = checks.empty_buffer,
  color = { fg = theme.syn.type, gui = 'bold'}
}

insert_left {
  'filesize',
  cond = checks.empty_buffer,
}

insert_left {
  'location'
}

insert_left {
  'progress',
  color = { fg = theme.syn.fun, gui = 'bold' }
}

insert_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = theme.diag.error },
    color_warn  = { fg = theme.syn.identifier },
    color_info  = { fg = theme.syn.type },
  },
}

insert_right {
  'branch',
  icon = '',
  color = { fg = theme.ui.special, gui = 'bold' },
}

insert_right {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
  diff_color = {
    added     = { fg = theme.vcs.added },
    modified  = { fg = theme.vcs.changed },
    removed   = { fg = theme.diag.error },
  },
}

insert_right {
  'filetype',
  color = { bg = theme.diag.info }
}

insert_right {
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.bo.filetype
    local clients = vim.lsp.get_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = ' ',
  color = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1, gui = 'bold' },
}

lualine.setup(cfg)
