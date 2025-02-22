local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("SetTwoSpaceIndent", { clear = true })
autocmd("FileType", {
	group = "SetTwoSpaceIndent",
	pattern = {
		"c",
		"cpp",
		"cc",
		"h",
		"hpp",
		"proto",
		"js",
		"ts",
		"tsx",
		"json",
		"css",
		"html",
		"xml",
		"yaml",
	},
	command = "setlocal shiftwidth=2 tabstop=2 softtabstop=2",
})

augroup("Set4TabIndent", { clear = true })
autocmd("FileType", {
	group = "Set4TabIndent",
	pattern = {
		"lua",
		"toml",
	},
	command = "setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab",
})
