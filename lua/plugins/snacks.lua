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
			exclude = { "node_modules", ".git", "target" },
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
		terminal = {
			enabled = true,
			win = {
				border = "rounded",
				position = "bottom",
			},
		},
		image = {
			enabled = true,
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
			"<leader>;b",
			function()
				Snacks.picker.buffers()
			end,
		},
		{
			"<leader>;r",
			function()
				Snacks.picker.lsp_references()
			end,
		},
		{
			"<leader>gb",
			function()
				Snacks.picker.git_branches()
			end,
		},
		{
			"<leader>gs",
			function()
				Snacks.picker.git_status()
			end,
		},
		{
			"<leader>;s",
			function()
				Snacks.picker.lsp_symbols()
			end,
		},
		{
			"<leader>;ws",
			function()
				Snacks.picker.lsp_workspace_symbols({ tree = true })
			end,
		},
		{
			"<leader>;p",
			function()
				local dirs = {}
				for dir in io.popen([[find ~/Code -mindepth 1 -maxdepth 2 -type d]]):lines() do
					dirs[dir] = dir
				end
				Snacks.picker.projects({
					recent = false,
					projects = dirs,
					patterns = { ".git", "_darcs", "Cargo.toml", "go.mod", ".hg", ".bzr", ".svn", "package.json", "Makefile" },
				})
			end,
		},
		{
			"<C-/>",
			function()
				Snacks.terminal.toggle()
			end,
		},
	},
}
