return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescriptreact = { "prettierd" },
			vue = { "prettierd" },
			html = { "prettierd" },
			css = { "prettierd" },
			json = { "prettierd" },
			markdown = { "prettierd" },
			lua = { "stylua" },
			rust = { "rustfmt" },
		},
		log_level = vim.log.levels.DEBUG,
	},
	keys = {
		{
			"<leader>gf",
			function()
				require("conform").format({ lsp_fallback = true })
			end,
			{ desc = "LSP Format file" },
		},
	},
}
