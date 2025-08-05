return {
	{ "Mofiqul/dracula.nvim", lazy = true },
	{ "mellow-theme/mellow.nvim", lazy = true },
	{ "thesimonho/kanagawa-paper.nvim", lazy = true },
	{ "catppuccin/nvim", name = "catppuccin", lazy = true },
	{ "rose-pine/neovim", lazy = true },
	{
		"sainnhe/gruvbox-material",
		lazy = true,
		config = function()
			vim.cmd([[let g:gruvbox_material_foreground = 'mix']])
		end,
	},
	{ "folke/tokyonight.nvim", lazy = true },
	{ "rebelot/kanagawa.nvim", lazy = true },
	{ "olimorris/onedarkpro.nvim", lazy = true },
}
