return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
    vim.keymap.set('n', '<leader>gap', ':Git add -p<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gaa', ':Git add -A<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gdd', ':Git diff<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gdc', ':Git diff --cached<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gc', ':Git commit<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gl', ':Git log<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gp', ':Git push<CR>', { noremap = true, silent = true })
  end,
}
