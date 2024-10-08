require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"c",
		"cpp",
		"css",
		"git_config",
		"gitignore",
		"go",
		"html",
		"javascript",
		"json",
		"lua",
		"make",
		"markdown",
		"proto",
		"python",
		"rust",
		"ssh_config",
		"toml",
		"tsx",
		"typescript",
		"vue",
		"xml",
		"yaml",
	},
	sync_install = false,
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
})
