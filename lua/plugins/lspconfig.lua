return {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason-lspconfig.nvim"},
        config = function()
                require'lspconfig'.lua_ls.setup{
                        capabilities = capabilities
                }
                require'lspconfig'.clangd.setup{
                        capabilities = capabilities
                }
        end,
}
