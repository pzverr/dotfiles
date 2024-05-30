local null_ls = require("null-ls")

null_ls.setup({
  null_ls.builtins.formatting.clang_format,
  null_ls.builtins.formatting.black,
  null_ls.builtins.formatting.gofmt,
  -- null_ls.builtins.formatting.astyle,
})

local bufopts = {
  noremap = true,
  silent = true,
  buffer = bufnr
}

vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format({async = true}) end, bufopts)

