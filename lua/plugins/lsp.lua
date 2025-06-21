return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
		},
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			local servers = {
				"lua_ls",
				"rust_analyzer",
				"emmet_language_server",
				"cssls",
				"html",
			}

			for _, lsp in ipairs(servers) do
				vim.lsp.config(lsp, {
					capabilities = capabilities,
				})
				vim.lsp.enable(lsp)
			end

			vim.lsp.config("tailwindcss", {
				tailwindcss = {
					hovers = true,
					suggestions = true,
					root_dir = function(fname)
						local root_pattern = lspconfig.util.root_pattern(
							"tailwind.config.cjs",
							"tailwind.config.js",
							"postcss.config.js"
						)
						return root_pattern(fname)
					end,
				},
			})

			vim.lsp.config("html", {
				filetypes = { "html" },
			})

			vim.lsp.enable("tailwindcss")
			vim.lsp.enable("html")

			-- Add border to pop up windows
			require("lspconfig.ui.windows").default_options.border = "single"

			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
				border = "single",
			})
			vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
				border = "single",
			})
			vim.diagnostic.config({
				float = { border = "single" },
			})

			local bufopts = { noremap = true, silent = true, buffer = bufnr }

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {})
			vim.keymap.set("n", "<space>ge", vim.diagnostic.open_float, bufopts)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>gi", function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			end, {})
		end,
	},
}
