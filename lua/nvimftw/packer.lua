-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = {
			"nvim-lua/plenary.nvim",
			"debugloop/telescope-undo.nvim",
		},
	}
	--use "uEdenEast/nightfox.nvim" -- Packer
	--use 'AlexvZyl/nordic.nvim'
	-- 
    use 'tpope/vim-rhubarb'
    use 'tpope/vim-sleuth'
    use {
	'nvim-lualine/lualine.nvim',
	requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
	use "rebelot/kanagawa.nvim"
	use {
		'nvim-tree/nvim-tree.lua',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true },
	}
	use 'lervag/vimtex'
	use 'SirVer/ultisnips'
	use ('xuhdev/vim-latex-live-preview')
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use {
		"theprimeagen/harpoon",
		branch = "harpoon2",
		requires = {{"nvim-lua/plenary.nvim"}}
	}
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use {
		"williamboman/mason.nvim", config = true,
		"williamboman/mason-lspconfig.nvim",
	}
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v4.x',
		requires = {
		-- Uncomment these if you want to manage LSP servers from neovim
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},
        {'j-hui/fidget.nvim'},
        --tag = 'legacy', opts = {} },

        {'folke/neodev.nvim'},

		-- LSP Support
		{'neovim/nvim-lspconfig'},
		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'L3MON4D3/LuaSnip',run = "make install_jsregexp" },

        {'saadparwaiz1/cmp_luasnip'},
        {'rafamadriz/friendly-snippets'},
		},
    use 'folke/which-key.nvim', opts = {},

    use 'lukas-reineke/indent-blankline.nvim',
	}

end)
