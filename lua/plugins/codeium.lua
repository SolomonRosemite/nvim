return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  cond = vim.g.vscode == nil,
  config = function()
    vim.cmd 'CodeiumDisable'
  end,
}
