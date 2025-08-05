return {
	"nvim-neorg/neorg",
	dependencies = {
		{
			"juniorsundar/neorg-extras",
			-- tag = "*" -- Always a safe bet to track current latest release
		},
		{ "pysan3/neorg-templates", dependencies = { "L3MON4D3/LuaSnip" } },
	},
	lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	version = "*", -- Pin Neorg to the latest stable release
	opts = {
		load = {
			["core.defaults"] = {},
			["core.summary"] = {},
			["core.concealer"] = {}, -- We added this line!
			["core.ui"] = {}, -- We added this line!
			["core.ui.calendar"] = {}, -- We added this line!
			["core.queries.native"] = {},
			["core.itero"] = {},
			-- ["core.completion"] = { engine = "blink" },
			["core.dirman"] = {
				config = {
					workspaces = {
						notes = "~/norg",
					},
					default_workspace = "notes",
				},
			},
			-- MANDATORY
			["external.many-mans"] = {
				config = {
					metadata_fold = true, -- If want @data property ... @end to fold
					code_fold = true, -- If want @code ... @end to fold
				},
			},
			-- OPTIONAL
			["external.agenda"] = {
				config = {
					workspace = nil, -- or set to "tasks_workspace" to limit agenda search to just that workspace
				},
			},
			["external.roam"] = {
				config = {
					fuzzy_finder = "Snacks", -- OR "Fzf" OR "Snacks". Defaults to "Telescope"
					fuzzy_backlinks = true, -- Set to "true" for backlinks in fuzzy finder instead of buffer
					roam_base_directory = "0_inbox/", -- Directory in current workspace to store roam nodes
					node_no_name = false, -- no suffix name in node filename
					node_name_randomiser = false, -- Tokenise node name suffix for more randomisation
					node_name_snake_case = true, -- snake_case the names if node_name_randomiser = false
				},
			},
      ["external.templates"] = {
        config = {
          templates_dir = "~/norg/templates"
        }
      },
		},
	},
	keys = {
		{
			"<leader>nf",
			"<cmd>Neorg roam node<CR>",
		},
		{
			"<leader>ne",
			"<cmd>Ex ~/norg<CR>",
		},
		{
			"<leader>oA",
			"<cmd>Neorg agenda<CR>",
		},
		{
			"<leader>X",
			"<cmd>Neorg roam capture<CR>",
		},
	},
}
