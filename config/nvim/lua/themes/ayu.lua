vim.o.background = "dark"

local transparency = {
	Normal = { bg = "None" },
	ColorColumn = { bg = "None" },
	SignColumn = { bg = "None" },
	Folded = { bg = "None" },
	FoldColumn = { bg = "None" },
	CursorLine = { bg = "None" },
	CursorColumn = { bg = "None" },
	WhichKeyFloat = { bg = "None" },
	VertSplit = { bg = "None" },
}

local ayu_colors = require("ayu.colors")

require("ayu").setup({
	-- mirage = false,
	-- terminal = true,
	-- overrides = transparency,
})

vim.cmd.colorscheme("ayu")
