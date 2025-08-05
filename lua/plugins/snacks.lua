return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		picker = {
			enabled = true,
			hidden = true,
			ignored = true,
			exclude = { "node_modules", ".git" },
		},
		dashboard = {
			enabled = true,
			sections = {
				{ section = "header" },
				{ icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
				{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
				{ section = "startup" },
			},
		},
	},
	keys = {
		{
			"<leader>;f",
			function()
				Snacks.picker.files()
			end,
			desc = "Find files",
		},
		{
			"<leader>;g",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep files",
		},
		{
			"<leader>;d",
			function()
				Snacks.picker.diagnostics_buffer()
			end,
		},
		{
			"<leader>;D",
			function()
				Snacks.picker.diagnostics()
			end,
		},
	},
}
