vim.g.mapleader = " "

-- Fix for this: https://neovim.discourse.group/t/how-do-i-use-space-as-the-leader-in-visual-mode/916/11
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", ",", ";")
vim.keymap.set("n", ";", ",")

vim.keymap.set('n', '<leader>p', '"0p')
vim.keymap.set('n', '<leader>P', '"0P')

vim.keymap.set('n', 'K', '<C-w>k')
vim.keymap.set('n', 'J', '<C-w>j')

-- Copy to clipboard from WSL
vim.keymap.set('v', '<C-c>', '"+y')
-- vim.keymap.set('n', '<C-c>', '"+y')

-- Copy to clipboard from WSL
-- Source: https://vi.stackexchange.com/questions/42305/neovim-following-the-instructions-in-h-clipboard-wsl-not-work-it-shows-no
vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
        ["+"] = 'clip.exe',
        ["*"] = 'clip.exe',
    },
    paste = {
        ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
}

