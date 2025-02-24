vim.o.background = "dark"

local bg0 = "#282828"

require("gruvbox").setup({
	transparent_mode = false,
	overrides = {
		-- SignColumn = { bg = Gruvbox.palette.dark1 },
		SignColumn = { bg = bg0 },
		GruvboxRedSign = { bg = bg0 },
		GruvboxGreenSign = { bg = bg0 },
		GruvboxYellowSign = { bg = bg0 },
		GruvboxBlueSign = { bg = bg0 },
		GruvboxPurpleSign = { bg = bg0 },
		GruvboxAquaSign = { bg = bg0 },
		GruvboxOrangeSign = { bg = bg0 },
	},
})

vim.cmd("colorscheme gruvbox")
