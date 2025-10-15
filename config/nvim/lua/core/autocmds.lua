local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("SetTwoSpaceIndent", { clear = true })
autocmd("FileType", {
    group = "SetTwoSpaceIndent",
    pattern = {
        "js",
        "ts",
        "tsx",
        "json",
        "css",
        "html",
        "yaml",
    },
    command = "setlocal shiftwidth=2 tabstop=2 softtabstop=2",
})

augroup("Set4TabIndent", { clear = true })
autocmd("FileType", {
    group = "Set4TabIndent",
    pattern = {
        "lua",
    },
    command = "setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab",
})

-- by default
augroup("Set4SpaceIndent", { clear = true })
autocmd("FileType", {
    group = "Set4SpaceIndent",
    pattern = {
        "c",
        "cpp",
        "cc",
        "h",
        "hpp",
    },
    command = "setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab",
})
