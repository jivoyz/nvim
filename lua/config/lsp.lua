-- Enable LSPs
vim.lsp.enable({
	"html",
	"cssls",
	"vtsls",
	"vue_ls",
	"tailwindcss",
	"lua_ls",
	"bashls",
	"gopls",
	"rust_analyzer",
  "emmet_language_server"
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "rounded",
})
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = "rounded",
})
vim.diagnostic.config({
	float = { border = "rounded" },
})
