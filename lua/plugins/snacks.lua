return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		explorer = { enabled = true },
		picker = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		indent = { enabled = false },
		input = { enabled = false },
		scroll = { enabled = false },
		statuscolumn = { enabled = false },
		words = { enabled = false },
	},
	keys = {
		{
			"<leader>e",
			function()
				Snacks.explorer({ autoclose = true, jump = { close = true } })
			end,
		},
		{
			"<leader>;f",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>;g",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>;b",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Grep",
		},
		{
			"<leader>lg",
			function()
				Snacks.lazygit()
			end,
			desc = "Lazygit",
		},
		{
			"<leader>;r",
			function()
				Snacks.picker.lsp_references()
			end,
			nowait = true,
			desc = "References",
		},
		{
			"<leader>;d",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "Diagnostics",
		},
	},
}
