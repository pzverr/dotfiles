require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "gopls", "pyright", "clangd", "lua_ls" },
})
