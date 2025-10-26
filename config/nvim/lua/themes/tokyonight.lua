vim.o.background = "dark"

local colors = require("tokyonight.colors").setup()

require("tokyonight").setup {
    style = "night",
    transparent = true,
    on_colors = function(colors)
        colors.bg_highlight = "#161728"
    end,
}

vim.cmd.colorscheme "tokyonight"
