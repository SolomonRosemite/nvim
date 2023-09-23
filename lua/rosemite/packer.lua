-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    use {
        'numToStr/Comment.nvim',
    }

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

    use {
        'cameron-wags/rainbow_csv.nvim',
        module = {
            'rainbow_csv',
            'rainbow_csv.fns'
        },
        ft = {
            'csv',
            'tsv',
            'csv_semicolon',
            'csv_whitespace',
            'csv_pipe',
            'rfc_csv',
            'rfc_semicolon'
        }
    }

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }

	use {
        'lewis6991/gitsigns.nvim',
    }

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    }

	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use({ 'catppuccin/nvim', as = 'catppuccin' })

	-- If you setup for the first time, you might have to commend the line below.
	vim.cmd('colorscheme rose-pine')
	vim.cmd('colorscheme catppuccin-mocha')

    use { "ThePrimeagen/harpoon", requires = "nvim-lua/plenary.nvim" }
	use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
	use { "APZelos/blamer.nvim" }
	use("nvim-treesitter/playground")
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use("github/copilot.vim")
end)

