require('rose-pine').setup({
    disable_background = true,
})

require('catppuccin').setup({
    transparent_background = true,
})

function Transparent(color)
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

require('onedark').setup {
    transparent = true,
    style = 'darker',
    lualine = {
        transparent = true,
    },
}

-- If you setup for the first time, you might have to commend the theme in use.
-- vim.cmd('colorscheme rose-pine')
-- Transparent("rose-pine")

vim.cmd('colorscheme catppuccin-mocha')

-- vim.cmd('colorscheme github_dark_default')
-- vim.cmd('colorscheme github_dark_tritanopia')
-- vim.cmd('colorscheme github_dark_dimmed')

-- require('onedark').load()
