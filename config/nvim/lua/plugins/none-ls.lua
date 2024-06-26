local null_ls = require("null-ls")

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	sources = {
		-- null_ls.builtins.formatting.astyle.with({ -- apt install astyle
		-- 	filetypes = { "c", "cpp", "h", "hpp" },
		-- 	args = { "--style=allman", "--indent=tab=4", "--align-pointer=type" },
		-- }),
		null_ls.builtins.formatting.clang_format, -- set up up with mason
		null_ls.builtins.formatting.gofmt, -- set up with go, from the box
		null_ls.builtins.formatting.black, -- set up up with mason
		null_ls.builtins.formatting.stylua, -- set up up with mason
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({
				group = augroup,
				buffer = bufnr,
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})
