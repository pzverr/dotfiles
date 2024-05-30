local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("setIndent", { clear = true })
autocmd("FileType", {
	group = "setIndent",
	pattern = {
		-- "c",
		-- "cpp",
		-- "h",
		-- "hpp",
		-- "proto",
		"lua",
		"js",
		"ts",
		"json",
		"css",
		"html",
		"xml",
		"yaml",
	},
	command = "setlocal shiftwidth=2 tabstop=2 softtabstop=2",
})
