local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    }
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
    -- Themes
    { "Shatur/neovim-ayu", lazy = true },
    { "ellisonleao/gruvbox.nvim", lazy = true },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            vim.cmd [[colorscheme tokyonight]]
        end,
    },
    -- UI
    {
        "glepnir/dashboard-nvim",
        event = "VimEnter",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        cmd = "Neotree",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    },
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
    },
    -- Syntax
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
    },
    -- DEV tools, LSP
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "black",
                "clang-format",
                "clangd",
                "codelldb",
                "isort",
                "pyright",
                "stylua",
            },
        },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = "williamboman/mason.nvim",
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = "williamboman/mason-lspconfig.nvim",
    },
    -- Autocomplete
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
        },
    },
    -- Formatting and linting
    { "nvimtools/none-ls.nvim", dependencies = "neovim/nvim-lspconfig" },
    -- Debug
    { "mfussenegger/nvim-dap", event = "VeryLazy" },
    -- Navs
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        cmd = "Telescope",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        "stevearc/aerial.nvim",
        opts = {},
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
        event = "VeryLazy",
    },
    -- Git, ETC
    { "lewis6991/gitsigns.nvim", event = { "BufReadPre" } },
    { "numToStr/Comment.nvim", event = "VeryLazy" },
}
