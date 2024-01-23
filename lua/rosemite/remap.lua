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

-- Stop Vim from yanking visual selected text
vim.keymap.set('x', 'p', 'P')
vim.keymap.set('n', '<leader>p', '"0p')
vim.keymap.set('n', '<leader>P', '"0P')

vim.keymap.set('n', 'H', '<C-w>h')
vim.keymap.set('n', 'L', '<C-w>l')

vim.keymap.set('n', 'K', '<C-w>k')
vim.keymap.set('n', 'J', '<C-w>j')

vim.keymap.set('n', '<C-q>', ':q<CR>')

vim.api.nvim_set_keymap('n', '<leader>cc', ':noh<CR>', {noremap = true, silent = true})

function YankCommentAndPasteAbove()
    -- Comment the lines
    local start_line = vim.fn.line("'<")
    local end_line = vim.fn.line("'>")
    require('Comment.api').toggle.linewise.count(end_line - start_line + 1)

    -- Paste the yanked content above the visual selection
    vim.cmd([[normal! O]])
    vim.cmd([[normal! P]])
end
vim.api.nvim_set_keymap('x', '<Leader>a', [[:<C-u>execute "'<,'>y | lua YankCommentAndPasteAbove()"<CR>]], { noremap = true })

-- Copy to clipboard from WSL
-- Source: https://vi.stackexchange.com/questions/42305/neovim-following-the-instructions-in-h-clipboard-wsl-not-work-it-shows-no
vim.keymap.set('v', '<C-c>', '"+y')
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

