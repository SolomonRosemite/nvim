function Transparent(color)
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    config = function()
      vim.opt.background = 'dark'
      vim.cmd 'colorscheme oxocarbon'

      -- vim.cmd.colorscheme 'tokyonight-night'
      -- vim.cmd.hi 'Comment gui=none'

      -- require('catppuccin').setup {
      --   transparent_background = true,
      -- }
      --
      -- vim.cmd.colorscheme 'catppuccin-mocha'

      -- vim.cmd 'colorscheme rose-pine'
      -- Transparent 'rose-pine'

      require('onedark').setup {
        transparent = true,
        style = 'darker',
        lualine = {
          transparent = true,
        },
      }

      require('onedark').load()
    end,
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
    lazy = false,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
  },
  {
    'navarasu/onedark.nvim',
    lazy = false,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
  },
}
