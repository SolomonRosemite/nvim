return {
  {
    'folke/tokyonight.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    config = function()
      vim.opt.background = 'dark'
      vim.cmd 'colorscheme oxocarbon'

      -- vim.cmd.colorscheme 'tokyonight-night'
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
  },
}
