require("todo-comments").setup {
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },

    -- regex that will be used to match keywords.
    -- don't replace the (KEYWORDS) placeholder
    pattern = [[\b(KEYWORDS(?:\([^)]+\))?:)]], -- ripgrep regex (custom)

    -- pattern = [[\b(KEYWORDS):]], -- ripgrep regex (old)
    -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
  },
}

vim.api.nvim_set_keymap('n', '<leader>f', ':TodoTelescope<CR>', {noremap = true, silent = true})
