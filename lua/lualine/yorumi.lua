-- inspired by https://github.com/nvim-lualine/lualine.nvim/blob/master/examples/evil_lualine.lua 

local arrow_sl = require('arrow.statusline')
local lualine = require('lualine')
local palette = require("yorumi.colors")

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
      normal = { c = { fg = palette.tsuki3, bg = palette.yoru1 }},
      inactive = { c = { fg = palette.tsuki1, bg = palette.yoru0 }},
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
  color = { fg = palette.tsuki4 }, -- Sets highlighting of component
  padding = { left = 0, right = 0 }, -- We don't need space before this
}

-- logo
insert_left {
  function()
    return get_os_logo()
  end,
  color = function()
    local mode_color = {
      n = palette.tsuki2,
      i = palette.sangoGreen,
      v = palette.sangoYellow,
      [' '] = palette.sangoBlue,
      V = palette.kairoYellow,
      c = palette.sangoCyan,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end
}


insert_left {
  function()
    return arrow_sl.text_for_statusline_with_icons()
  end,
  cond = arrow_sl.is_on_arrow_file(),
  color = { fg = palette.tsuki3 }
}

insert_left {
  'filename',
  cond = checks.empty_buffer,
  color = { fg = palette.sangoCyan, gui = 'bold'}
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
  color = { fg = palette.sangoBlue, gui = 'bold' }
}

insert_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = palette.sangoRed },
    color_warn  = { fg = palette.sangoYellow },
    color_info  = { fg = palette.sangoCyan },
  },
}

insert_right {
  'branch',
  icon = '',
  color = { fg = palette.sangoViolet, gui = 'bold' },
}

insert_right {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
  diff_color = {
    added     = { fg = palette.kairoGreen },
    modified  = { fg = palette.kairoYellow },
    removed   = { fg = palette.kairoRed },
  },
}

insert_right {
  'filetype',
  color = { bg = palette.kuroiBlue }
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
  color = { fg = palette.tsuki4, bg = palette.yoru3, gui = 'bold' },
}

lualine.setup(cfg)
