return {
	filetypes = { "html", "vue", "javascriptreact", "typescriptreact" },
	tailwindcss = {
		hovers = true,
		suggestions = true,
		root_dir = function(fname)
			local root_pattern = lspconfig.util.root_pattern("tailwind.config.cjs", "tailwind.config.js", "postcss.config.js")
			return root_pattern(fname)
		end,
	},
}
