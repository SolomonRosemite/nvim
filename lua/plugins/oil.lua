return {
  'stevearc/oil.nvim',
  commit = '60fe23050f5b93550262f5c96ab00b5c51b60830', -- Until merged: https://github.com/stevearc/oil.nvim/pull/467
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      columns = {
        'icon',
      },
      -- Skip the confirmation popup for simple operations (:help oil.skip_confirm_for_simple_edits)
      skip_confirm_for_simple_edits = true,
      -- Selecting a new/moved/renamed file or directory will prompt you to save changes first
      -- (:help prompt_save_on_select_new_entry)
      prompt_save_on_select_new_entry = true,
      use_default_keymaps = false,
      keymaps = {
        ['g?'] = 'actions.show_help',
        ['<CR>'] = 'actions.select',
        ['<C-m>'] = 'actions.select_split',
        ['<C-s>'] = { 'actions.select', opts = { vertical = true }, desc = 'Open the entry in a vertical split' },
        ['<C-h>'] = { 'actions.select', opts = { horizontal = true }, desc = 'Open the entry in a horizontal split' },
        ['<C-t>'] = { 'actions.select', opts = { tab = true }, desc = 'Open the entry in new tab' },
        ['-'] = 'actions.parent',
        ['_'] = 'actions.open_cwd',
        ['`'] = 'actions.cd',
        ['~'] = { 'actions.cd', opts = { scope = 'tab' }, desc = ':tcd to the current oil directory' },
        ['gs'] = 'actions.change_sort',
        ['gx'] = 'actions.open_external',
        ['g.'] = 'actions.toggle_hidden',
        ['g\\'] = 'actions.toggle_trash',
      },
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      },
    }

    -- Since these didn't really work, the following workaround is used.
    -- https://github.com/stevearc/oil.nvim/issues/87#issuecomment-2179322405
    -- https://github.com/stevearc/oil.nvim/issues/357#issuecomment-2071054399
    local function on_oil_open()
      local oil = require 'oil'
      local entry = oil.get_cursor_entry()
      if entry and entry.type ~= 'directory' then
        oil.open_preview { vertical = true, split = 'botright' }
      end
    end

    -- Set up the key mapping
    vim.keymap.set('n', '-', function()
      vim.cmd 'Oil'
      on_oil_open()
    end, { desc = 'Open parent directory with Oil' })

    vim.api.nvim_create_autocmd('User', {
      pattern = 'OilEnter',
      callback = function()
        on_oil_open()
      end,
    })
  end,
}
