local set = vim.keymap.set

-- Navigation
set("n", "<leader>pv", vim.cmd.Ex)
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzz")
set("n", "N", "Nzz")
set({ "n", "v" }, "<leader>y", [["+y]])
set("n", "<leader>Y", [["+Y]])

-- LSP keymaps
set("n", "K", function()
	vim.lsp.buf.hover({ border = "rounded" })
end, { desc = "Hover on character" })
set("n", "gd", vim.lsp.buf.definition, { desc = "Goto definition" })
set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto declaration" })
set("n", "gt", vim.lsp.buf.type_definition, { desc = "Goto type definition" })
set("n", "<space>ge", vim.diagnostic.open_float)
set("n", "gr", vim.lsp.buf.rename, { desc = "LSP Rename" })
set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code action" })
set("n", "<leader>gi", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, {})
