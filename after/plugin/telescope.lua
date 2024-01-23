local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-k>', builtin.live_grep, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
-- TODO: add marks

require('telescope').setup{
    pickers = {
        live_grep = {
            hidden = true,
            no_ignore = true,
            find_command = {
                'rg',
                '--files',
                '--color=never',
                '--no-heading',
                '--line-number',
                '--column',
                '--smart-case',
                '--hidden',
                '--glob',
                '!{**/.git/*,**/.svelte-kit/*,**/target/*,**/node_modules/*,**/.dist/*}',
                '--sort',
                'path',  -- Add this line to order by directory
            },
        },
        find_files = {
            hidden = true,
            no_ignore = true,
            find_command = {
                'rg',
                '--files',
                '--color=never',
                '--no-heading',
                '--line-number',
                '--column',
                '--smart-case',
                '--hidden',
                '--glob',
                '!{**/.git/*,**/.svelte-kit/*,**/target/*,**/node_modules/*,**/.dist/*}',
                '--sort',
                'path',  -- Add this line to order by directory
            },
        },
    }
}

