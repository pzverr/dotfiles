require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"pyright",
		"clangd",
		"ts_ls",
		"ruff",
		"lua_ls",
	},
})
