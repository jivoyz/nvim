return {
	{
		"saghen/blink.cmp",
		-- optional: provides snippets for the snippet source
		dependencies = "rafamadriz/friendly-snippets",

		-- use a release tag to download pre-built binaries
		version = "*",
		-- requires rust nightly
		build = "cargo build --release",

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			-- 'default' for mappings similar to built-in completion
			-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
			-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
			-- See the full "keymap" documentation for information on defining your own keymap.
			keymap = {
				preset = "enter",
			},

			appearance = {
				-- Sets the fallback highlight groups to nvim-cmp's highlight groups
				-- Useful for when your theme doesn't support blink.cmp
				-- Will be removed in a future release
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},

			completion = {
				documentation = { window = { border = "single" } },
				list = { selection = { preselect = false, auto_insert = false } },
				accept = { auto_brackets = { enabled = false } },
				menu = {
					border = "single",
					auto_show = function(ctx)
						return ctx.mode ~= "cmdline"
					end,
					draw = { columns = { { "label", "label_description", gap = 1 }, { "kind", "kind_icon" } } },
				},
			},
			signature = { window = { border = "single" } },

			sources = {
				default = function()
					if vim.bo.filetype == "javascriptreact" or "typescriptreact" or "javascript" or "typescript" then
						return { "lsp", "buffer" }
					else
						return { "lsp", "path", "snippets", "buffer" }
					end
				end,
			},
		},
		opts_extend = { "sources.default" },
	},
}
