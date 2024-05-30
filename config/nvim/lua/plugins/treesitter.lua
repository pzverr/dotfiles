require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "cpp",
    "go",
    "python",
    "lua",
    "proto",
    "javascript",
    "typescript",
    "json",
    "css",
    "yaml",
    "toml",
    "html",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  }
}
