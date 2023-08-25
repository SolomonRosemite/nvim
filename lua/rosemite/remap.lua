vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-c>', ':silent exe \"\'<,\'>w !clip.exe\"<cr>', { noremap = true, silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", ",", ";")
vim.keymap.set("n", ";", ",")

vim.keymap.set('n', '<leader>p', '"0p')
vim.keymap.set('n', '<leader>P', '"0P')

