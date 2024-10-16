return { -- Autoformat
  'stevearc/conform.nvim',
  cond = vim.g.vscode == nil,
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      -- javascript = { 'prettierd' },
      -- typescript = { 'prettierd' },
    },
  },
}
