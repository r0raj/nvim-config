require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls","clangd","pyright"}
})

local on_attach = function(_,bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, bufopts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n','K',vim.lsp.buf.hover,{})
    vim.keymap.set('n','gr',require('telescope.builtin').lsp_references,{})
    vim.keymap.set('n','gd',vim.lsp.buf.definition, {})
    vim.keymap.set('n','gi',vim.lsp.buf.implementation, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                -- Get language server to recognize vim as global
                globals = {"vim"},
            }
        }
    },
}
require("lspconfig").clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {
        "clangd",
        "--header-insertion=never",
        "--clang-tidy",
    }
}
require("lspconfig").pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
