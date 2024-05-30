require("bufferline").setup({
	options = {
		mode = "buffers",
		show_buffer_icons = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		hover = {
			enabled = false,
		},
	},
})

vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
