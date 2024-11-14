local function default_header()
	return {
		"",
		"██╗██╗  ██╗██╗",
		"██║╚██╗██╔╝██║",
		"██║ ╚███╔╝ ██║",
		"██║ ██╔██╗ ██║",
		"██║██╔╝ ██╗██║",
		"╚═╝╚═╝  ╚═╝╚═╝",
		"",
		"",
		"",
	}
end

require("dashboard").setup({
	theme = "hyper",
	-- disable_move = false,
	shortcut_type = "number",
	config = {
		header = default_header(),
		-- week_header = {
		--   enable = false,
		-- },
		shortcut = {
			{
				desc = "Plugin Manager",
				group = "Include",
				action = "Lazy",
				key = "l",
			},
			{
				desc = "Mason",
				group = "Include",
				action = "Mason",
				key = "m",
			},
		},
		packages = {
			enable = true,
		},
		project = {
			enable = false,
		},
		-- footer = {},
	},
})
