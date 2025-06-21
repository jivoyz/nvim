return {
	{
		"Mofiqul/dracula.nvim",
		config = function()
			-- vim.cmd [[colorscheme dracula]]
		end,
	},
	{
		"mellow-theme/mellow.nvim",
		config = function()
			-- vim.cmd [[colorscheme mellow]]
		end,
	},
	{
		"thesimonho/kanagawa-paper.nvim",
		config = function()
			-- vim.cmd [[colorscheme kanagawa-paper]]
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme catppuccin-latte]])
			-- vim.cmd [[colorscheme catppuccin-macchiato]]
			-- vim.cmd [[colorscheme catppuccin-mocha]]
		end,
	},
	{
		"rose-pine/neovim",
		config = function()
			-- vim.cmd [[colorscheme rose-pine-main]]
		end,
	},
	{
		"sainnhe/gruvbox-material",
		config = function()
			vim.cmd([[let g:gruvbox_material_foreground = 'mix']])

			-- vim.cmd [[colorscheme gruvbox-material]]
		end,
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			-- vim.cmd [[colorscheme tokyonight-night]]
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		config = function()
			-- vim.cmd [[colorscheme kanagawa-dragon]]
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
		config = function()
			-- vim.cmd [[colorscheme onedark]]
		end,
	},
}
