return {
	cmd = { "bash-language-server", "start" },
	filetypes = { "zsh", "sh", "bash" },
	init_options = {},
	settings = {
		bashIde = {
			globPattern = "*@(.sh|.inc|.bash|.command)",
		},
	},
}
