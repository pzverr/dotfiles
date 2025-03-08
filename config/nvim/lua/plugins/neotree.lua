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
		last_modified = {
			enabled = true,
			required_width = 64,
		},
	},
	window = {
		position = "left",
	},
	popup_border_style = "rounded",
	filesystem = {
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_hidden = false,
			always_show_by_pattern = {
				".env",
			},
			never_show = {
				".DS_Store",
			},
		},
	},
})

vim.keymap.set("n", "<leader>e", ":Neotree toggle position=left reveal=true action=focus source=filesystem<CR>")
