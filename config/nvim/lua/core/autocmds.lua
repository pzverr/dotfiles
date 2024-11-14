local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("SetIndent", { clear = true })
autocmd("FileType", {
	group = "SetIndent",
	pattern = {
		"c",
		"cpp",
		"cc",
		"h",
		"hpp",
		"proto",
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
