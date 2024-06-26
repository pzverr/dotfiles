vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

require("neo-tree").setup({
	enable_git_status = false,
	enable_diagnostics = false,
	default_component_configs = {
		indent = {
			indent_size = 2,
		},
	},
	window = {
		position = "float",
	},
})

vim.keymap.set("n", "<leader>e", ":Neotree toggle position=float reveal=true action=focus source=filesystem<CR>")
