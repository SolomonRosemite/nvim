vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = true
vim.opt.backup = true
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append '@-@'

vim.opt.updatetime = 50

vim.g.mapleader = ' '

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.cursorline = true
vim.opt.timeout = false

if vim.g.vscode == nil then
  vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
end

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Prevents vim from automatically commenting next line
vim.cmd [[autocmd FileType * set formatoptions-=ro]]

-- Set filetype to json with comment
vim.cmd [[
  autocmd BufNewFile,BufRead *.json set filetype=jsonc
]]
