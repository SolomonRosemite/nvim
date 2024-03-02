local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-k>', builtin.live_grep, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>hh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>man', builtin.man_pages, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})

local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

local open_man_in_current_window = function(prompt_bufnr)
    local selection = action_state.get_selected_entry()
    actions.close(prompt_bufnr)
    vim.cmd('tab Man ' .. selection.value)
end

local open_help_in_current_window = function(prompt_bufnr)
    local selection = action_state.get_selected_entry()
    actions.close(prompt_bufnr)
    vim.cmd('tab help ' .. selection.value)
end

-- TODO: add marks

require('telescope').setup {
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
                '!{**/.git/*,**/.svelte-kit/*,**/target/*,**/node_modules/*,**/.dist/*,**/dist/*}',
                '--sort',
                'path', -- Add this line to order by directory
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
                '!{**/.git/*,**/.svelte-kit/*,**/target/*,**/node_modules/*,**/.dist/*,**/dist/*}',
                '--sort',
                'path', -- Add this line to order by directory
            },
        },
        help_tags = {
            mappings = {
                i = {
                    ["<CR>"] = open_help_in_current_window
                },
            },
        },
        man_pages = {
            mappings = {
                i = {
                    ["<CR>"] = open_man_in_current_window
                },
            },
        },
    }
}
