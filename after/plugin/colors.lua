-- require('rose-pine').setup({
    -- If we want a transparent bg uncommend the line below.
    -- disable_background = true
-- })

function FixColors(color) 
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

-- Same thing here, uncommend if needed.
-- FixColors()
