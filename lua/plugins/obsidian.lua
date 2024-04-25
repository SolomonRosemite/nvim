return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = false,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '~/.obsidian/vaults/personal',
      },
    },
    disable_frontmatter = true,
  },
  config = function(_, opts)
    vim.opt.conceallevel = 2
    require('obsidian').setup(opts)
  end,
}
