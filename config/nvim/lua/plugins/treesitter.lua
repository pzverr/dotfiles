require'nvim-treesitter.configs'.setup {
	ensure_installed = {
        "c",
        "cpp",
        "rust",
        "go",
        "gomod",
        "gosum",
        "python",
        "php",
        "lua",
        "proto",
        "javascript",
        "typescript",
        "tsx",
        "vue",
        "json",
        "css",
        "yaml",
        "toml",
        "html",
        "htmldjango",
    },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	}
}
