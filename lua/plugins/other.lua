-- For small plugins
return {
	{
		"nvim-lua/plenary.nvim",
		lazy = true,
	},
	{
		"windwp/nvim-ts-autotag",
		ft = { "html", "vue", "javascriptreact", "typescriptreact" },
		lazy = true,
		opts = {},
	},
	{
		"norcalli/nvim-colorizer.lua",
		ft = { "css", "vue", "javascript", "typesript", "javascriptreact", "typescriptreact" },
		lazy = true,
		opts = {
			css = { rgb_fn = true },
		},
	},
	{
		"jsongerber/nvim-px-to-rem",
		ft = { "css", "scss", "less" },
		lazy = true,
		config = true,
	},
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
		opts = {},
	},
	{
		-- Enable JSX/TSX comments
		"folke/ts-comments.nvim",
		opts = {},
		ft = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
	},
}
