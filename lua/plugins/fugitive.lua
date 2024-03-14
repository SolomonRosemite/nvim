return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
    vim.keymap.set('n', '<leader>gd', ':Git diff<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gc', ':Git commit<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gl', ':Git log<CR>', { noremap = true, silent = true })
  end,
}
