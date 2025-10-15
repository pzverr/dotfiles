require("aerial").setup {
    on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
    end,
    layout = {
        default_direction = "right",
        placement = "window",
    },
}
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
