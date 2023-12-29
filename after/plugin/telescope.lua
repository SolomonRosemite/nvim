local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>grep', builtin.live_grep, {})
-- TODO: add marks

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
        "dist",
    }
  }
}

