return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.pairs").setup()
		require("mini.surround").setup()
		require("mini.git").setup()
		require("mini.diff").setup()
		require("mini.statusline").setup()

		-- Use only HEAD name as summary string
		local format_summary = function(data)
			-- Utilize buffer-local table summary
			local summary = vim.b[data.buf].minigit_summary
			vim.b[data.buf].minigit_summary_string = summary.head_name or ""
		end

		local au_opts = { pattern = "MiniGitUpdated", callback = format_summary }
		vim.api.nvim_create_autocmd("User", au_opts)
	end,
}
