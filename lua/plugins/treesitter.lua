return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  cond = vim.g.vscode == nil,
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'bash', 'c', 'html', 'lua', 'javascript', 'typescript', 'rust', 'markdown', 'vim', 'vimdoc' },
      auto_install = true,
      indent = { enable = true },

      highlight = {
        enable = true,
        disable = { 'csv' },
      },
    }

    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  end,
}
