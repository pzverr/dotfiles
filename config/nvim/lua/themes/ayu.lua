vim.o.background = "dark"

local colors = require("ayu.colors")
colors.generate()

require("ayu").setup({
	mirage = true,
	terminal = true,
	overrides = {
		LineNr = { fg = colors.comment },
	},
})

vim.cmd.colorscheme("ayu")
