return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = { "lua", "javascript", "typescript" },
				highlight = { enable = true },
				indent = { enable = true },
				auto_install = true,
				ignore_install = { "org" },
				sync_install = true,
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup({})
		end,
	},
}
