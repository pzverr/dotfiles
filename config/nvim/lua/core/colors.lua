vim.opt.termguicolors = true

vim.o.background = "dark"

require('gruvbox').setup({
    transparent_mode = true,
    -- overrides = {
    --     SignColumn = { bg = "#282828" }
    -- }
})

vim.cmd("colorscheme gruvbox")

-- require('onedark').setup{
--     style = 'dark'
-- }
-- require('onedark').load()
