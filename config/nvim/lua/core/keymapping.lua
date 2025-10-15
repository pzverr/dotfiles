vim.keymap.set("n", "<s-q>", ":bd<CR>")
vim.keymap.set("n", "<c-s>", ":w<CR>")
vim.keymap.set("v", "c", '"+y', { desc = "yank selection to clipboard" })
