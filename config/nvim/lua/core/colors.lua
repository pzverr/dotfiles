vim.opt.termguicolors = true

vim.o.background = "dark"

require('gruvbox').setup({
    transparent_mode = true
})

vim.cmd("colorscheme gruvbox")
-- require('onedark').setup{
--     style = 'dark'
-- }
-- require('onedark').load()
