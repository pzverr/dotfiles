local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup('setIndent', { clear = true })
autocmd('FileType', {
  group = 'setIndent',
  pattern = {
    "cpp",
    "c",
    "h",
    "lua",
    "proto",
    "json",
    "js",
    "ts",
    "css",
    "html",
    "xml",
    "yaml",
  },
  command = 'setlocal shiftwidth=2 tabstop=2 softtabstop=2'
})
