-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<C-p>', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>ps', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)

local hpm = require('harpoon.mark')
local hpu = require('harpoon.ui')

vim.keymap.set('n', '<leader>a', hpm.add_file, {})
vim.keymap.set('n', '<leader>q', hpu.toggle_quick_menu, {})
vim.keymap.set('n', '<leader>h', hpu.toggle_quick_menu, {})

for i = 1, 9 do
    vim.keymap.set('n', '<leader>' .. i, function()
        hpu.nav_file(i)
    end, {})
end
