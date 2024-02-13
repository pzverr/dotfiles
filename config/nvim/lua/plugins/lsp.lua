local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.diagnostic.config({virtual_text = false})

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = {
        noremap = true,
        silent = true,
        buffer = bufnr
    }

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

lspconfig['pyright'].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    }
})

lspconfig['gopls'].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    cmd = {'gopls', '-mode=stdio'},
    filetypes = {"go", "gomod"},
})

lspconfig['clangd'].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = {"c", "cpp"},
})

lspconfig['tsserver'].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = {"tsx", "typescript", "javascript"}
})

lspconfig['volar'].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = {"vue"}
})

