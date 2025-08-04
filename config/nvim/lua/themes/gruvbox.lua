vim.o.background = "dark"

local colors = require("gruvbox").palette

require("gruvbox").setup({
	contrast = "hard",
	overrides = {
		SignColumn = { bg = colors.dark0_hard },
		GruvboxRedSign = { bg = colors.dark0_hard },
		GruvboxGreenSign = { bg = colors.dark0_hard },
		GruvboxYellowSign = { bg = colors.dark0_hard },
		GruvboxBlueSign = { bg = colors.dark0_hard },
		GruvboxPurpleSign = { bg = colors.dark0_hard },
		GruvboxAquaSign = { bg = colors.dark0_hard },
		GruvboxOrangeSign = { bg = colors.dark0_hard },
		NormalFloat = { bg = colors.dark0_hard, fg = colors.light4 },
		NeoTreeFloatTitle = { bg = colors.dark0_hard, fg = colors.light4 },
		NeoTreeTitleBar = { bg = colors.light4, fg = "#07080d" },
		BufferLineFill = { bg = colors.dark0, fg = colors.light4 },
		BufferLineBackground = { bg = colors.dark0_hard, fg = colors.light4 },
		BufferLineBufferSelected = { bg = colors.dark0_hard, fg = colors.light1 },
		BufferLineBufferVisible = { bg = colors.dark0_hard, fg = colors.light4 },
		BufferLineBuffer = { bg = colors.dark0_hard, fg = colors.light4 },
		BufferLineCloseButtonSelected = { bg = colors.dark0_hard, fg = colors.light1 },
		BufferLineCloseButtonVisible = { bg = colors.dark0_hard, fg = colors.light4 },
		BufferLineCloseButton = { bg = colors.dark0_hard, fg = colors.light4 },
		BufferLineModified = { bg = colors.dark0_hard, fg = colors.faded_green },
		BufferLineModifiedVisible = { bg = colors.dark0_hard, fg = colors.faded_green },
		BufferLineModifiedSelected = { bg = colors.dark0_hard, fg = colors.bright_green },
		BufferLineSeparator = { bg = colors.dark0_hard, fg = colors.dark0_hard },
		BufferLineIndicatorSelected = { bg = colors.dark0_hard, fg = colors.light1 },
		BufferLineIndicatorVisible = { bg = colors.dark0_hard, fg = colors.light4 },
		BufferLineTruncMarker = { bg = colors.dark1, fg = colors.light4 },
		BufferLineDuplicate = { bg = colors.dark0_hard, fg = colors.light4 },
		BufferLineDuplicateSelected = { bg = colors.dark0_hard, fg = colors.light1 },
		BufferLineDuplicateVisible = { bg = colors.dark0_hard, fg = colors.light4 },
	},
})

vim.cmd("colorscheme gruvbox")
