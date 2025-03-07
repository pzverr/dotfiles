vim.o.background = "dark"

local dark0_hard = "#1d2021"
local dark0 = "#282828"

require("gruvbox").setup({
	contrast = "hard",
	overrides = {
		SignColumn = { bg = dark0_hard },
		GruvboxRedSign = { bg = dark0_hard },
		GruvboxGreenSign = { bg = dark0_hard },
		GruvboxYellowSign = { bg = dark0_hard },
		GruvboxBlueSign = { bg = dark0_hard },
		GruvboxPurpleSign = { bg = dark0_hard },
		GruvboxAquaSign = { bg = dark0_hard },
		GruvboxOrangeSign = { bg = dark0_hard },
	},
})

vim.cmd("colorscheme gruvbox")
