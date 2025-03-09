local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.diagnostic.config({ virtual_text = false })

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
end

lspconfig.clangd.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	cmd = { "clangd" },
	filetypes = { "c", "cpp", "cc", "h", "hpp" },
})

lspconfig.gopls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	cmd = { "gopls" },
})

lspconfig.pyright.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	flags = {
		debounce_text_changes = 150,
	},
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
})
