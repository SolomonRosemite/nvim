return {
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup {
      diff_binaries = false, -- Show diffs for binaries
      keymaps = {
        disable_defaults = false, -- Disable the default keymaps
        file_panel = {
          { 'n', 'L' },
        },
      },
    }
  end,
}
