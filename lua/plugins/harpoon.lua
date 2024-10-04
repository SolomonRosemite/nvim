return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cond = vim.g.vscode == nil,
  opts = { settings = {
    save_on_toggle = false,
    sync_on_ui_close = false,
  } },
  config = function()
    local harpoon = require 'harpoon'
    local Config = require 'harpoon.config'
    local Path = require 'plenary.path'

    vim.keymap.set('n', '<leader>A', function()
      harpoon:list('my_custom_list'):add()
    end)

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list('my_custom_list'):add(Config.get_default_config().default.create_list_item(Config.get_default_config().default))
    end)

    vim.keymap.set('n', '<leader>q', function()
      harpoon.ui:toggle_quick_menu(harpoon:list 'my_custom_list')
    end)

    for i = 1, 9 do
      vim.keymap.set('n', '<leader>' .. i, function()
        harpoon:list('my_custom_list'):select(i)
      end, {})
    end

    harpoon:setup {
      settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
      },
      my_custom_list = {
        create_list_item = function(config, name)
          name = name or Path:new(vim.api.nvim_buf_get_name(0)):make_relative(config.get_root_dir())

          -- If name already contains position, return as is.
          if name:match ': %(%d+,%d+%)' then
            return { value = name }
          end

          local bufnr = vim.fn.bufnr(name, false)
          local pos = bufnr ~= -1 and vim.api.nvim_win_get_cursor(0) or { 1, 0 }

          return {
            value = string.format('%s: (%d,%d)', name, pos[1], pos[2]),
          }
        end,
        select = function(list_item, list, options)
          local name, row, col = list_item.value:match '(.+): %((%d+),(%d+)%)'
          if not name then
            Config.get_default_config().default.select(list_item, list, options)
            return
          end

          Config.get_default_config().default.select({ value = name, context = { row = tonumber(row), col = tonumber(col) } }, list, options)

          local win = vim.api.nvim_get_current_win()
          vim.api.nvim_win_set_cursor(win, { tonumber(row), tonumber(col) })
        end,
      },
    }
  end,
}
