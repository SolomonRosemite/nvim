function Transparent(color)
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

-- vim.opt.background = 'dark'
-- vim.cmd 'colorscheme oxocarbon'

-- vim.cmd.colorscheme 'tokyonight-night'
-- vim.cmd.hi 'Comment gui=none'
-- Transparent 'tokyonight-night'

require('catppuccin').setup {
  transparent_background = true,
}
vim.cmd.colorscheme 'catppuccin-mocha'

-- vim.cmd 'colorscheme rose-pine'
-- Transparent 'rose-pine'

require('onedark').setup {
  transparent = true,
  style = 'darker',
  lualine = {
    transparent = true,
  },
}
-- require('onedark').load()

local p = require 'poimandres.palette'
require('poimandres').setup {
  dim_nc_background = true, -- dim 'non-current' window backgrounds
  disable_background = true, -- disable background
  -- disable_float_background = true, -- disable background for floats
  bold_vert_split = false, -- use bold vertical separators
  disable_italics = false, -- disable italics
  -- fix for: https://github.com/olivercederborg/poimandres.nvim/issues/44#issuecomment-2182983874
  highlight_groups = {
    LspReferenceText = { bg = p.background1 },
    LspReferenceRead = { bg = p.background1 },
    LspReferenceWrite = { bg = p.background1 },
  },
}
-- vim.cmd 'colorscheme poimandres'
