return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  cond = vim.g.vscode == nil,
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = { signs = false },
}
